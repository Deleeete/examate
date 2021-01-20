Str[exp_]:=ToString@InputForm@exp;

PoissonPValue[actual_,theory_]:=
If[actual>=theory,
	Probability[x>=actual,x\[Distributed]PoissonDistribution@theory],
	Probability[x<actual,x\[Distributed]PoissonDistribution@theory]
];

PoissonPValueNormalApproax[actual_,theory_]:=
If[actual>=theory,
	Probability[x>=actual,x\[Distributed]NormalDistribution[theory,\[Sqrt]theory]],
	Probability[x<actual,x\[Distributed]NormalDistribution[theory,\[Sqrt]theory]]
];

PDFMean[pdf_,{x_,xmin_,xmax_}]:=Integrate[pdf*x,{x,xmin,xmax}];

PDFExpectation[pdf_,f_,{x_,xmin_,xmax_}]:=Integrate[pdf*f,{x,xmin,xmax}];

PDFVarience[pdf_,{x_,xmin_,xmax_}]:=Block[{mean},
	mean=PDFMean[pdf,{x,xmin,xmax}];
	Integrate[(x-mean)^2*pdf,{x,xmin,xmax}]
];

PDFVarienceB[pdf_,{x_,xmin_,xmax_}]:=Block[{esquare,squaree},
	esquare=PDFExpectation[pdf,x^2,{x,xmin,xmax}];
	squaree=PDFMean[pdf,{x,xmin,xmax}]^2;
	esquare-squaree
];

PDFStandardDeviation[pdf_,{x_,xmin_,xmax_}]:=\[Sqrt]PDFVarience[pdf,{x,xmin,xmax}];

PDFVariableTransform[pdf_,x_,fx_]:=Block[{x1,x2},
x1=Last[x/.Solve[y==fx,x]];
x2=D[x1,y]/.{y->x};
pdf/.{x->x2}
];

PDFVariableTransformSolve[px_,x_,py_]:=Block[{rhs,lhs},
rhs=Integrate[px,x];
lhs=Integrate[py,y];
y/.Last@Solve[lhs==rhs,y]
];

PAgivenB[pB_,pAandB_]:=pAandB/pB;

PAorB[pA_,pB_,pAandB_]:=pA+pB-pAandB;

PAgivenBBayes[pA_,pB_,pBgivenA_]:=(pA*pBgivenA)/pB;

PPV[pior_,sensitivity_,FPR_]:=(pior*sensitivity)/(pior*sensitivity+(1-pior)FPR);

NPV[pior_,sensitivity_,FPR_]:=Block[{specificity,FNR},
FNR=1-sensitivity;
specificity=1-FPR;
(pior*specificity)/(pior*specificity+(1-pior)FNR)
];

DivProcess[f_,{x_,y_,z_}]:=Block[{dfx,dfy,dfz},
	dfx=D[f[[1]],x];
	dfy=D[f[[2]],y];
	dfz=D[f[[3]],z];
	Echo["x分量求导结果为："<>Str@dfx];
	Echo["y分量求导结果为："<>Str@dfy];
	Echo["z分量求导结果为："<>Str@dfz];
	Echo["散度为：("<>Str@dfx<>")+("<>Str@dfy<>")+("<>Str@dfz<>")= "<>Str[dfx+dfy+dfz]];
]

Flux[v_,{x_,y_,z_},g_,{a_,amin_,amax_},{b_,bmin_,bmax_}]:=Module[{dga,dgb,dS,vp,i1,i2},
dga=Simplify@D[g,a];
dgb=Simplify@D[g,b];
dS=Simplify[dga\[Cross]dgb];
vp=Simplify[v/.{x->g[[1]],y->g[[2]],z->g[[3]]}];
i1=Simplify@Integrate[vp.dS,{a,amin,amax}];
i2=Simplify@Integrate[i1,{b,bmin,bmax}];
Echo["参数1的偏导数为："<>Str@dga];
Echo["参数2的偏导数为："<>Str@dgb];
Echo["面积微元的表达式为："<>Str@dS];
Echo["参数化后的向量场表达式为："<>Str@vp];
Echo["对第一层积分（参数1）结果为："<>Str@i1];
Echo["对第二层积分（参数2）结果为："<>Str@i2];
i2]

LineIntegrate[v_,{x_,y_,z_},c_,{a_,amax_,amin_}]:=Module[{dca,vp,dot,i},
dca=Simplify@D[c,a];
vp=Simplify@v/.{x->c[[1]],y->c[[2]],z->c[[3]]};
dot=Simplify[vp.dca];
i=Simplify@Integrate[dot,{a,amax,amin}];
Echo["路径的切向量为："<>Str@dca];
Echo["参数化后的向量场为："<>Str@vp];
Echo["场与切向量的内积为："<>Str@dot];
Echo["线积分的结果为："<>Str@i];
dot
]
