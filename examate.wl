(* ::Package:: *)

BeginPackage["Examate`"]


PoissonPValue::usage="PoissonPValue[\:7406\:8bba\:503c,\:771f\:5b9e\:503c] \n\:5df2\:77e5\:7406\:8bba\:503c\:ff0c\:8ba1\:7b97\:67d0\:4e2a\:771f\:5b9e\:503c\:51fa\:73b0\:7684\:6982\:7387\:3002\:4f7f\:7528\:6cca\:677e\:5206\:5e03\:7cbe\:786e\:8ba1\:7b97\:3002";
PoissonPValueNormalApproax::usage="PoissonPValueNormalApproax[\:7406\:8bba\:503c,\:771f\:5b9e\:503c] \n\:5df2\:77e5\:7406\:8bba\:503c\:ff0c\:8ba1\:7b97\:67d0\:4e2a\:771f\:5b9e\:503c\:51fa\:73b0\:7684\:6982\:7387\:3002\:4f7f\:7528\:6b63\:6001\:5206\:5e03\:8fd1\:4f3c\:8ba1\:7b97\:3002";
PDFMean::usage="PDFMean[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:5747\:503c\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFExpectation::usage="PDFExpectation[\:6982\:7387\:5206\:5e03\:51fd\:6570,\:76ee\:6807\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:81ea\:53d8\:91cf\:7684\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:4efb\:610f\:51fd\:6570\:7684\:671f\:671b\:503c\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFVarience::usage="PDFVarience[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:65b9\:5dee\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFVarienceB::usage="PDFVarienceB[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:65b9\:5dee\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002\:8fd9\:4e2a\:51fd\:6570\:7528\:53e6\:4e00\:79cd\:65b9\:6cd5\:8ba1\:7b97\:ff0c\:7406\:8bba\:4e0a\:5e94\:8be5\:4e0ePDFVarience\:51fd\:6570\:7b49\:4ef7\:3002";
PDFStandardDeviation::usage="PDFStandardDeviation[\:6982\:7387\:5206\:5e03\:51fd\:6570,{\:81ea\:53d8\:91cf,\:81ea\:53d8\:91cf\:4e0b\:9650,\:81ea\:53d8\:91cf\:4e0a\:9650}] \n\:5df2\:77e5\:6982\:7387\:5206\:5e03\:51fd\:6570\:ff0c\:6c42\:6807\:51c6\:5dee\:7684\:8868\:8fbe\:5f0f\:3002\:5176\:4e2d\:ff0c\:81ea\:53d8\:91cf\:5728\:4e0a\:4e0b\:9650\:4e4b\:5916\:7684\:5730\:65b9\:6052\:4e3a0\:3002";
PDFVariableTransform::usage="PDFVariableTransform[x,f(x)] \n\:5047\:8bbe\:5173\:4e8e\:968f\:673a\:53d8\:91cfx\:5b58\:5728\:6982\:7387\:5206\:5e03\:51fd\:6570p(x)\:ff0c\:6c42x\:7684\:51fd\:6570f(x)\:7684\:6982\:7387\:5206\:5e03\:51fd\:6570p(f(x))\:3002";


Begin["`Private`"]


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


End[]


EndPackage[]
