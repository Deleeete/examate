(* ::Package:: *)

BeginPackage["Examate`"];


Str::usage="Str[\:8868\:8fbe\:5f0f] \n\:8fd4\:56de\:8868\:8fbe\:5f0f\:7684\:53ef\:8f93\:5165\:5f62\:5f0f\:5b57\:7b26\:4e32";
PoissonPValue::usage="PoissonPValue[\:7406\:8bba\:503c,\:771f\:5b9e\:503c] \n\:5df2\:77e5\:7406\:8bba\:503c\:ff0c\:8ba1\:7b97\:67d0\:4e2a\:771f\:5b9e\:503c\:51fa\:73b0\:7684\:6982\:7387\:3002\:4f7f\:7528\:6cca\:677e\:5206\:5e03\:7cbe\:786e\:8ba1\:7b97\:3002";
PoissonPValueNormalApproax::usage="PoissonPValueNormalApproax[\:7406\:8bba\:503c,\:771f\:5b9e\:503c] \n\:5df2\:77e5\:7406\:8bba\:503c\:ff0c\:8ba1\:7b97\:67d0\:4e2a\:771f\:5b9e\:503c\:51fa\:73b0\:7684\:6982\:7387\:3002\:4f7f\:7528\:6b63\:6001\:5206\:5e03\:8fd1\:4f3c\:8ba1\:7b97\:3002";
PDFMean::usage="PDFMean[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:5747\:503c\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFExpectation::usage="PDFExpectation[\:6982\:7387\:5206\:5e03\:51fd\:6570,\:76ee\:6807\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:81ea\:53d8\:91cf\:7684\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:4efb\:610f\:51fd\:6570\:7684\:671f\:671b\:503c\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFVarience::usage="PDFVarience[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:65b9\:5dee\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFVarienceB::usage="PDFVarienceB[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:65b9\:5dee\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002\:8fd9\:4e2a\:51fd\:6570\:7528\:53e6\:4e00\:79cd\:65b9\:6cd5\:8ba1\:7b97\:ff0c\:7406\:8bba\:4e0a\:5e94\:8be5\:4e0ePDFVarience\:51fd\:6570\:7b49\:4ef7\:3002";
PDFStandardDeviation::usage="PDFStandardDeviation[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:6807\:51c6\:5dee\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFVariableTransform::usage="PDFVariableTransform[\:81ea\:53d8\:91cf\:7684PDF,\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:7684\:51fd\:6570] \n\:5047\:8bbe\:5173\:4e8e\:968f\:673a\:81ea\:53d8\:91cfx\:5b58\:5728\:6982\:7387\:5206\:5e03\:51fd\:6570pdf_x\:ff0c\:6c42x\:7684\:51fd\:6570y\:7684\:6982\:7387\:5206\:5e03\:51fd\:6570pdf_y\:3002";
PDFVariableTransformSolve::usage="PDFVariableTransformSolve[\:81ea\:53d8\:91cf\:7684PDF,\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:51fd\:6570\:7684PDF] \n\:5047\:8bbe\:5173\:4e8e\:968f\:673a\:53d8\:91cfx\:5b58\:5728\:6982\:7387\:5206\:5e03\:51fd\:6570pdf_x\:ff0c\:4e14x\:7684\:51fd\:6570y\:7684\:6982\:7387\:5206\:5e03\:51fd\:6570\:4e3apdf_y\:ff0c\:6c42y\:7684\:8868\:8fbe\:5f0f\:3002";
PAgivenB::usage="PAgivenB[B\:4e8b\:4ef6\:6982\:7387,A\:4e0eB\:540c\:65f6\:53d1\:751f\:6982\:7387] \n\:5df2\:77e5B\:72ec\:7acb\:53d1\:751f\:7684\:6982\:7387\:4ee5\:53caA\:4e0eB\:540c\:65f6\:53d1\:751f\:7684\:6982\:7387\:ff0c\:6c42B\:53d1\:751f\:7684\:60c5\:51b5\:4e0bA\:53d1\:751f\:7684\:6982\:7387\:3002";
PAorB::usage="PorB[A\:4e8b\:4ef6\:6982\:7387,B\:4e8b\:4ef6\:6982\:7387,A\:4e0eB\:540c\:65f6\:53d1\:751f\:6982\:7387] \n\:5df2\:77e5A\:3001B\:5404\:81ea\:72ec\:7acb\:53d1\:751f\:7684\:6982\:7387\:4ee5\:53caA\:4e0eB\:540c\:65f6\:53d1\:751f\:7684\:6982\:7387\:ff0c\:6c42A\:4e0eB\:4e4b\:95f4\:81f3\:5c11\:4e00\:4e2a\:53d1\:751f\:7684\:6982\:7387\:3002";
PAgivenBBayes::usage="PAgivenBBayes[A\:4e8b\:4ef6\:6982\:7387,B\:4e8b\:4ef6\:6982\:7387,A\:53d1\:751f\:7684\:60c5\:51b5\:4e0b\:53d1\:751fB\:7684\:6982\:7387] \n\:5df2\:77e5A\:3001B\:5404\:81ea\:72ec\:7acb\:53d1\:751f\:7684\:6982\:7387\:4ee5\:53caA\:53d1\:751f\:7684\:60c5\:51b5\:4e0b\:53d1\:751fB\:7684\:6982\:7387\:ff0c\:6c42\:53d1\:751fB\:7684\:60c5\:51b5\:4e0b\:53d1\:751fA\:7684\:6982\:7387\:3002";
PPV::usage="PPV[\:53d1\:75c5\:7387,\:6d4b\:8bd5\:7075\:654f\:5ea6,\:6d4b\:8bd5\:5047\:9633\:6027\:7387] \n\:5df2\:77e5\:53d1\:75c5\:7387\:548c\:6d4b\:8bd5\:7684\:7075\:654f\:5ea6\:4e0e\:5047\:9633\:6027\:7387\:ff0c\:6c42\:9633\:6027\:7ed3\:679c\:5b9e\:9645\:60a3\:75c5\:6982\:7387\:ff08\:9633\:6027\:7ed3\:679c\:9884\:6d4b\:503c\:ff0cPositivePredictiveValue\:ff0cPPV\:ff09\:3002";
NPV::usage="NPV[\:53d1\:75c5\:7387,\:6d4b\:8bd5\:7075\:654f\:5ea6,\:6d4b\:8bd5\:5047\:9633\:6027\:7387] \n\:5df2\:77e5\:53d1\:75c5\:7387\:548c\:6d4b\:8bd5\:7684\:7075\:654f\:5ea6\:4e0e\:5047\:9633\:6027\:7387\:ff0c\:6c42\:9634\:6027\:7ed3\:679c\:5b9e\:9645\:4e0d\:60a3\:75c5\:6982\:7387\:ff08\:9634\:6027\:7ed3\:679c\:9884\:6d4b\:503c\:ff0cNegativePredictiveValue\:ff0cNPV\:ff09\:3002";
DivProcess::usage="DivProcess[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf,z\:65b9\:5411\:81ea\:53d8\:91cf}] \n\:5df2\:77e5\:5411\:91cf\:573a\:7684\:8868\:8fbe\:5f0f\:ff0c\:6c42\:5411\:91cf\:573a\:7684\:6563\:5ea6\:3002\:8fd9\:4e2a\:51fd\:6570\:4f1a\:663e\:793a\:8ba1\:7b97\:8fc7\:7a0b\:3002";
Flux::usage="Flux[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf,z\:65b9\:5411\:81ea\:53d8\:91cf},\:66f2\:9762\:53c2\:6570\:65b9\:7a0b,{\:66f2\:9762\:53c2\:65701,\:66f2\:9762\:53c2\:65701\:4e0b\:9650,\:66f2\:9762\:53c2\:65701\:4e0a\:9650},{\:66f2\:9762\:53c2\:65702,\:66f2\:9762\:53c2\:65702\:4e0b\:9650,\:66f2\:9762\:53c2\:65702\:4e0a\:9650}] \n\:5df2\:77e5\:5411\:91cf\:573av\:7684\:8868\:8fbe\:5f0f\:ff0c\:548c\:66f2\:9762g\:7684\:53c2\:6570\:65b9\:7a0b\:4e0e\:53c2\:6570\:8303\:56f4\:ff0c\:6c42v\:7a7f\:8fc7s\:7684\:901a\:91cf\:3002";
LineIntegrate::usage="LineIntegrate[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf,z\:65b9\:5411\:81ea\:53d8\:91cf},\:8def\:5f84\:53c2\:6570\:65b9\:7a0b,{\:66f2\:9762\:53c2\:65701,\:66f2\:9762\:53c2\:65701\:4e0b\:9650,\:66f2\:9762\:53c2\:65701\:4e0a\:9650}] \n\:5df2\:77e5\:5411\:91cf\:573av\:7684\:8868\:8fbe\:5f0f\:ff0c\:548c\:66f2\:7ebfc\:7684\:53c2\:6570\:65b9\:7a0b\:4e0e\:53c2\:6570\:8303\:56f4\:ff0c\:6c42v\:5728c\:4e0a\:7684\:7ebf\:79ef\:5206\:3002";


Begin["`Private`"];


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
	Echo["x\:5206\:91cf\:6c42\:5bfc\:7ed3\:679c\:4e3a\:ff1a"<>Str@dfx];
	Echo["y\:5206\:91cf\:6c42\:5bfc\:7ed3\:679c\:4e3a\:ff1a"<>Str@dfy];
	Echo["z\:5206\:91cf\:6c42\:5bfc\:7ed3\:679c\:4e3a\:ff1a"<>Str@dfz];
	Echo["\:6563\:5ea6\:4e3a\:ff1a("<>Str@dfx<>")+("<>Str@dfy<>")+("<>Str@dfz<>")= "<>Str[dfx+dfy+dfz]];
]

Flux[v_,{x_,y_,z_},g_,{a_,amin_,amax_},{b_,bmin_,bmax_}]:=Module[{dga,dgb,dS,vp,i1,i2},
dga=Simplify@D[g,a];
dgb=Simplify@D[g,b];
dS=Simplify[dga\[Cross]dgb];
vp=Simplify[v/.{x->g[[1]],y->g[[2]],z->g[[3]]}];
i1=Simplify@Integrate[vp.dS,{a,amin,amax}];
i2=Simplify@Integrate[i1,{b,bmin,bmax}];
Echo["\:53c2\:65701\:7684\:504f\:5bfc\:6570\:4e3a\:ff1a"<>Str@dga];
Echo["\:53c2\:65702\:7684\:504f\:5bfc\:6570\:4e3a\:ff1a"<>Str@dgb];
Echo["\:9762\:79ef\:5fae\:5143\:7684\:8868\:8fbe\:5f0f\:4e3a\:ff1a"<>Str@dS];
Echo["\:53c2\:6570\:5316\:540e\:7684\:5411\:91cf\:573a\:8868\:8fbe\:5f0f\:4e3a\:ff1a"<>Str@vp];
Echo["\:5bf9\:7b2c\:4e00\:5c42\:79ef\:5206\:ff08\:53c2\:65701\:ff09\:7ed3\:679c\:4e3a\:ff1a"<>Str@i1];
Echo["\:5bf9\:7b2c\:4e8c\:5c42\:79ef\:5206\:ff08\:53c2\:65702\:ff09\:7ed3\:679c\:4e3a\:ff1a"<>Str@i2];
i2]

LineIntegrate[v_,{x_,y_,z_},c_,{a_,amax_,amin_}]:=Module[{dca,vp,dot,i},
dca=Simplify@D[c,a];
vp=Simplify@v/.{x->c[[1]],y->c[[2]],z->c[[3]]};
dot=Simplify[vp.dca];
i=Simplify@Integrate[dot,{a,amax,amin}];
Echo["\:8def\:5f84\:7684\:5207\:5411\:91cf\:4e3a\:ff1a"<>Str@dca];
Echo["\:53c2\:6570\:5316\:540e\:7684\:5411\:91cf\:573a\:4e3a\:ff1a"<>Str@vp];
Echo["\:573a\:4e0e\:5207\:5411\:91cf\:7684\:5185\:79ef\:4e3a\:ff1a"<>Str@dot];
Echo["\:7ebf\:79ef\:5206\:7684\:7ed3\:679c\:4e3a\:ff1a"<>Str@i];
dot
]


End[];


EndPackage[];
