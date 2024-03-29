(* ::Package:: *)

BeginPackage["Examate`"];


Str::usage="Str[\:8868\:8fbe\:5f0f] \n\:8fd4\:56de\:8868\:8fbe\:5f0f\:7684\:53ef\:8f93\:5165\:5f62\:5f0f\:5b57\:7b26\:4e32";
EchoSimplify::usage="EchoSimplify[\:6807\:7b7e,\:8868\:8fbe\:5f0f] \n\:5206\:522b\:6253\:5370\:8868\:8fbe\:5f0f\:7684\:539f\:59cb\:503c\:548c\:5316\:7b80\:540e\:7684\:503c\:3002";
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
CurlProcess::usage="CurlProcess[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf}] \n\:5df2\:77e5\:5411\:91cf\:573a\:7684\:8868\:8fbe\:5f0f\:ff0c\:6c42\:5411\:91cf\:573a\:7684\:65cb\:5ea6\:3002\:8fd9\:4e2a\:51fd\:6570\:4f1a\:663e\:793a\:8ba1\:7b97\:8fc7\:7a0b\:3002";
CurlProcess3D::usage="CurlProcess3D[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf,z\:65b9\:5411\:81ea\:53d8\:91cf}] \n\:5df2\:77e5\:5411\:91cf\:573a\:7684\:8868\:8fbe\:5f0f\:ff0c\:6c42\:5411\:91cf\:573a\:7684\:65cb\:5ea6\:3002\:8fd9\:4e2a\:51fd\:6570\:4f1a\:663e\:793a\:8ba1\:7b97\:8fc7\:7a0b\:3002";
Flux::usage="Flux[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf,z\:65b9\:5411\:81ea\:53d8\:91cf},\:66f2\:9762\:53c2\:6570\:65b9\:7a0b,{\:66f2\:9762\:53c2\:65701,\:66f2\:9762\:53c2\:65701\:4e0b\:9650,\:66f2\:9762\:53c2\:65701\:4e0a\:9650},{\:66f2\:9762\:53c2\:65702,\:66f2\:9762\:53c2\:65702\:4e0b\:9650,\:66f2\:9762\:53c2\:65702\:4e0a\:9650}] \n\:5df2\:77e5\:5411\:91cf\:573av\:7684\:8868\:8fbe\:5f0f\:ff0c\:548c\:66f2\:9762g\:7684\:53c2\:6570\:65b9\:7a0b\:4e0e\:53c2\:6570\:8303\:56f4\:ff0c\:6c42v\:7a7f\:8fc7s\:7684\:901a\:91cf\:3002";
LineIntegrate::usage="LineIntegrate[\:5411\:91cf\:573a,{i\:65b9\:5411\:81ea\:53d8\:91cf,j\:65b9\:5411\:81ea\:53d8\:91cf,z\:65b9\:5411\:81ea\:53d8\:91cf},\:8def\:5f84\:53c2\:6570\:65b9\:7a0b,{\:66f2\:9762\:53c2\:65701,\:66f2\:9762\:53c2\:65701\:4e0b\:9650,\:66f2\:9762\:53c2\:65701\:4e0a\:9650}] \n\:5df2\:77e5\:5411\:91cf\:573av\:7684\:8868\:8fbe\:5f0f\:ff0c\:548c\:66f2\:7ebfc\:7684\:53c2\:6570\:65b9\:7a0b\:4e0e\:53c2\:6570\:8303\:56f4\:ff0c\:6c42v\:5728c\:4e0a\:7684\:7ebf\:79ef\:5206\:3002";
ParticularSolve::usage="ParticularSolve[\:5404\:9636\:5bfc\:6570\:7684\:7cfb\:6570\:7684\:96c6\:5408,\:65b9\:7a0b\:53f3\:624b\:8fb9\:7684\:8868\:8fbe\:5f0f,\:731c\:89e3\:7684\:8868\:8fbe\:5f0f,\:731c\:89e3\:4e2d\:5f85\:5b9a\:5e38\:6570\:7684\:96c6\:5408,\:81ea\:53d8\:91cf] \n\:5df2\:77e5/\:731c\:6d4b\:89e3\:7684\:5f62\:5f0f\:ff0c\:89e3\:4efb\:610f\:9636\:5e38\:7cfb\:6570\:5fae\:5206\:65b9\:7a0b\:3002";
IsOrthogonal::usage="IsOrthogonal[\:51fd\:6570f,\:51fd\:6570g,{\:81ea\:53d8\:91cf,\:533a\:95f4\:4e0b\:9650,\:533a\:95f4\:4e0a\:9650}] \n\:5224\:65ad\:51fd\:6570f\:548cg\:5728\:7ed9\:5b9a\:533a\:95f4\:4e0a\:662f\:5426\:6b63\:4ea4\:3002";
OrthogonalInterval::usage="OrthogonalInterval[\:51fd\:6570f,\:51fd\:6570g,\:81ea\:53d8\:91cfx] \n\:7ed9\:51fa\:51fd\:6570f(x)\:548cg(x)\:53ef\:80fd\:7684\:6b63\:4ea4\:533a\:95f4\:7684\:8d77\:70b9\:6216\:7ec8\:70b9\:3002";
BaseFunctionCoefficients::usage="BaseFunctionCoefficients[\:51fd\:6570f,\:57fa\:51fd\:6570\:7684\:5217\:8868,{\:81ea\:53d8\:91cf,\:533a\:95f4\:4e0b\:9650,\:533a\:95f4\:4e0a\:9650}] \n\:5c06\:51fd\:6570f\:5206\:89e3\:5230\:7ed9\:5b9a\:7684\:57fa\:51fd\:6570\:4e0a\:ff0c\:5e76\:5206\:522b\:7ed9\:51fa\:6bcf\:4e2a\:5206\:91cf\:7684\:503c\:ff08\:5373\:7cfb\:6570\:ff09\:3002";
FunctionEigenvalues::usage="FunctionEigenvalues[\:7b97\:7b26O,\:7279\:5f81\:51fd\:6570f] \n\:5df2\:77e5\:51fd\:6570f\:662f\:7b97\:7b26O\:7684\:7279\:5f81\:51fd\:6570\:ff0c\:6c42\:5b83\:76f8\:5e94\:7684\:7279\:5f81\:503c\:3002";
IsOddFunction::usage="IsOddFunction[\:51fd\:6570] \n\:5224\:65ad\:4e00\:5143\:51fd\:6570\:662f\:5426\:4e3a\:5947\:51fd\:6570";
IsEvenFunction::usage="IsEvenFunction[\:51fd\:6570] \n\:5224\:65ad\:4e00\:5143\:51fd\:6570\:662f\:5426\:4e3a\:5076\:51fd\:6570";
FourierCoeA::usage="FourierCoeA[\:51fd\:6570f,{\:81ea\:53d8\:91cfx,\:533a\:95f4\:4e0b\:9650xmin,\:533a\:95f4\:4e0a\:9650xmax}] \n\:8ba1\:7b97\:51fd\:6570f\:5728\:533a\:95f4[xmin,xmax]\:7684\:5085\:91cc\:53f6\:6b63\:5f26\:7cfb\:6570\:3002\:7ed3\:679c\:4e3a\:7b2cn\:9879\:7684\:7cfb\:6570\:3002";
FourierCoeB::usage="FourierCoeB[\:51fd\:6570f,{\:81ea\:53d8\:91cfx,\:533a\:95f4\:4e0b\:9650xmin,\:533a\:95f4\:4e0a\:9650xmax}] \n\:8ba1\:7b97\:51fd\:6570f\:5728\:533a\:95f4[xmin,xmax]\:7684\:5085\:91cc\:53f6\:4f59\:5f26\:7cfb\:6570\:3002\:7ed3\:679c\:4e3a\:7b2cn\:9879\:7684\:7cfb\:6570\:3002";
VecPlot::usage="VecPlot[\:5411\:91cf\:573af,\:81ea\:53d8\:91cfx,\:81ea\:53d8\:91cfy] \n\:6253\:5370\:5411\:91cf\:573af\:7684\:5411\:91cf\:56fe\:3002x/y\:7684\:8303\:56f4\:5747\:4e3a-10~10";
FieldPlot::usage="FieldPlot[\:5411\:91cf\:573af,f\:7684\:52bf\:573a\[Phi],\:81ea\:53d8\:91cfx,\:81ea\:53d8\:91cfy] \n\:6253\:5370\:5411\:91cf\:573af\:7684\:56fe\:793a\:ff0c\:5305\:62ec\:573a\:7684\:5411\:91cf\:56fe\:548c\:7b49\:52bf\:7ebf\:3002x/y\:7684\:8303\:56f4\:5747\:4e3a-10~10";
QP::usage="QP[\:6ce2\:51fd\:6570,\:65f6\:95f4,{\:4f4d\:7f6e\:81ea\:53d8\:91cf,\:4f4d\:7f6e\:6700\:5c0f\:503c,\:4f4d\:7f6e\:6700\:5927\:503c}] \n\:5df2\:77e5\:6ce2\:51fd\:6570\:7684\:8868\:8fbe\:5f0f\:ff0c\:6c42\:5728\:7279\:5b9a\:65f6\:95f4\:7279\:5b9a\:4f4d\:7f6e\:533a\:95f4\:5185\:53d1\:73b0\:7c92\:5b50\:7684\:6982\:7387";
SimplifyConjugate::usage="SimplifyConjugate[\:8868\:8fbe\:5f0f,\:8868\:8fbe\:5f0f\:4e2d\:662f\:5b9e\:6570\:7684\:7b26\:53f7\:7684\:96c6\:5408] \n\:5df2\:77e5\:4e00\:4e2a\:590d\:8868\:8fbe\:5f0f\:ff0c\:6c42\:5176\:5171\:8f6d\:7684\:8868\:8fbe\:5f0f\:3002\:7b2c\:4e8c\:4e2a\:53c2\:6570\:4e3a\:8be5\:8868\:8fbe\:5f0f\:4e2d\:5b9e\:6570\:53c2\:6570\:7684\:96c6\:5408\:3002";
SimplifyNormSquare::usage="SimplifyNorm[\:51fd\:6570\:540d,\:8868\:8fbe\:5f0f\:4e2d\:662f\:5b9e\:6570\:7684\:7b26\:53f7\:7684\:96c6\:5408] \n\:5df2\:77e5\:4e00\:4e2a\:590d\:8868\:8fbe\:5f0f\:ff0c\:6c42\:5176\:6a21\:5e73\:65b9\:7684\:8868\:8fbe\:5f0f\:3002\:7b2c\:4e8c\:4e2a\:53c2\:6570\:4e3a\:8be5\:8868\:8fbe\:5f0f\:4e2d\:5b9e\:6570\:53c2\:6570\:7684\:96c6\:5408\:3002";
ListD::usage="ListD[\:51fd\:6570\:540d,\:51fd\:6570\:8868\:8fbe\:5f0f\:7684,\:81ea\:53d8\:91cf1,\:81ea\:53d8\:91cf2] \n\:5206\:522b\:5217\:51fa\:51fd\:6570\:5bf9\:4e24\:4e2a\:81ea\:53d8\:91cf\:7684\:4e00\:9636\:548c\:4e8c\:9636\:504f\:5bfc\:6570\:ff0c\:5e76\:8fd4\:56de\:4e00\:4e2a\:5bfc\:6570\:8868\:8fbe\:5f0f\:66ff\:6362\:89c4\:5219\:3002";
IntegrateProcess::usage="IntegrateProcess[\:51fd\:6570,{\:81ea\:53d8\:91cf,\:79ef\:5206\:4e0b\:9650,\:79ef\:5206\:4e0a\:9650}] \n\:8ba1\:7b97\:79ef\:5206\:3002\:8fd9\:4e2a\:51fd\:6570\:4f1a\:6253\:5370\:8ba1\:7b97\:8fc7\:7a0b\:3002";
LipidLc::usage="LipidLc[\:78b3\:539f\:5b50\:6570\:91cf] \n\:5df2\:77e5\:78b3\:539f\:5b50\:6570\:91cf\:ff0c\:8ba1\:7b97\:78f7\:8102\:5c3e\:90e8\:78b3\:94fe\:957f\:5ea6\:3002\:5355\:4f4d\:4e3a\:7eb3\:7c73\:3002";
LipidV::usage="LipidV[\:78b3\:539f\:5b50\:6570\:91cf] \n\:5df2\:77e5\:78b3\:539f\:5b50\:6570\:91cf\:ff0c\:8ba1\:7b97\:78f7\:8102\:5c3e\:90e8\:78b3\:94fe\:4f53\:79ef\:ff08\:5047\:8bbe\:4e3a0\:578b\:78f7\:8102\:ff09\:3002\:5355\:4f4d\:4e3a\:7acb\:65b9\:7eb3\:7c73\:3002";
LipidPackingParameters::usage="LipidPackingParameters[\:5c3e\:90e8\:4f53\:79efV,\:5934\:7ec4\:622a\:9762\:79efa0,\:5c3e\:90e8\:957f\:5ea6lc] \n\:8ba1\:7b97\:78f7\:8102\:7684\:5806\:79ef\:53c2\:6570\:3002";
LipidDeltaGibbs::usage="LipidDeltaGibbs[\[Gamma],a,a0] \n\:8ba1\:7b97\:78f7\:8102\:7684\:5806\:79ef\:53c2\:6570\:3002";
LipidPhase::usage="LipidPhase[b1,b2,b3] \n\:5df2\:77e5\:884d\:5c04\:73af\:5750\:6807\:ff0c\:81ea\:52a8\:5224\:65ad\:6700\:53ef\:80fd\:7684\:78f7\:8102\:76f8\:6001\:3002";
FRETk::usage="FRETk[\[Tau] \:8870\:51cf\:65f6\:95f4,R0 Forste\:8ddd\:79bb,r D-A\:8ddd\:79bb] \n\:8ba1\:7b97FRET\:7684\:80fd\:91cf\:8f6c\:5316\:53d1\:751f\:7387\:3002";
FRETe::usage="FRETe[R0 Forste\:8ddd\:79bb,r D-A\:8ddd\:79bb] \n\:8ba1\:7b97FRET\:7684\:80fd\:91cf\:8f6c\:5316\:6548\:7387\:3002";
FRETe::usage="FRETe[Fd D\:53d1\:5c04\:901a\:91cf,Fda A\:53d1\:5c04\:901a\:91cf] \n\:8ba1\:7b97FRET\:7684\:80fd\:91cf\:8f6c\:5316\:6548\:7387\:3002";
StateLifetime::usage="StateLifetime[kIC \:5185\:8f6c\:6362\:53d1\:751f\:7387,kFl \:8367\:5149\:53d1\:751f\:7387,kISC \:5176\:4ed6\:53d1\:751f\:7387] \n\:5df2\:77e5\:5404\:79cd\:91ca\:653e\:8fc7\:7a0b\:7684\:53d1\:751f\:7387\:ff0c\:6c42\:7535\:5b50\:6fc0\:53d1\:6001\:5bff\:547d";
DNAVolumeFraction::usage="DNAVolumeFraction[Nbp \:78b1\:57fa\:5bf9\:6570\:91cf,V \:5bb9\:5668\:603b\:4f53\:79ef] \n\:5df2\:77e5\:78b1\:57fa\:5bf9\:6570\:91cf\:548c\:5bb9\:5668\:603b\:4f53\:79ef\:ff0c\:8ba1\:7b97DNA\:4f53\:79ef\:5360\:6bd4\:3002";
ProteinkDa::usage="ProteinkDa[Naa \:6c28\:57fa\:9178\:6570\:91cf] \n\:5df2\:77e5\:6c28\:57fa\:9178\:6570\:91cf\:ff0c\:8ba1\:7b97\:86cb\:767d\:8d28\:5206\:5b50\:91cf\:3002";
QuantumEfficiency::usage="QuantumEfficiency[kIC \:5185\:8f6c\:6362\:53d1\:751f\:7387,kFl \:8367\:5149\:53d1\:751f\:7387,kISC \:5176\:4ed6\:53d1\:751f\:7387] \n\:5df2\:77e5\:5404\:79cd\:91ca\:653e\:8fc7\:7a0b\:7684\:53d1\:751f\:7387\:ff0c\:6c42\:8367\:5149\:91cf\:5b50\:6548\:7387";


Begin["`Private`"];


Str[exp_]:=ToString@TraditionalForm@ExpandAll@exp;

EchoSimplify[str_,exp_]:=Module[{},
	Echo[str<>Str[exp]];
	Echo["\:5316\:7b80\:5f97\:ff1a"<>Str[Simplify@Str@exp]];
];

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

PDFMean[pdf_,{x_,xmin_,xmax_}]:=Integrate[pdf*x,{x,xmin,xmax},Assumptions->{xmax\[Element]Reals,xmin\[Element]Reals}];

PDFExpectation[pdf_,f_,{x_,xmin_,xmax_}]:=Integrate[pdf*f,{x,xmin,xmax},Assumptions->{xmax\[Element]Reals,xmin\[Element]Reals}];

PDFVarience[pdf_,{x_,xmin_,xmax_}]:=Module[{mean},
	mean=PDFMean[pdf,{x,xmin,xmax}];
	Integrate[(x-mean)^2*pdf,{x,xmin,xmax},Assumptions->{xmax\[Element]Reals,xmin\[Element]Reals}]
];

PDFVarienceB[pdf_,{x_,xmin_,xmax_}]:=Module[{esquare,squaree},
	esquare=PDFExpectation[pdf,x^2,{x,xmin,xmax}];
	squaree=PDFMean[pdf,{x,xmin,xmax}]^2;
	esquare-squaree
];

PDFStandardDeviation[pdf_,{x_,xmin_,xmax_}]:=\[Sqrt]PDFVarience[pdf,{x,xmin,xmax}];

PDFVariableTransform[pdf_,x_,fx_]:=Module[{x1,x2},
x1=Last[x/.Solve[y==fx,x]];
x2=D[x1,y]/.{y->x};
pdf/.{x->x2}
];

PDFVariableTransformSolve[px_,x_,py_]:=Module[{rhs,lhs},
	rhs=Integrate[px,x];
	lhs=Integrate[py,y];
	y/.Last@Solve[lhs==rhs,y]
];

PAgivenB[pB_,pAandB_]:=pAandB/pB;

PAorB[pA_,pB_,pAandB_]:=pA+pB-pAandB;

PAgivenBBayes[pA_,pB_,pBgivenA_]:=(pA*pBgivenA)/pB;

PPV[pior_,sensitivity_,FPR_]:=(pior*sensitivity)/(pior*sensitivity+(1-pior)FPR);

NPV[pior_,sensitivity_,FPR_]:=Module[{specificity,FNR},
	FNR=1-sensitivity;
	specificity=1-FPR;
	(pior*specificity)/(pior*specificity+(1-pior)FNR)
];

DivProcess[f_,{x_,y_,z_}]:=Module[{dfx,dfy,dfz},
	dfx=D[f[[1]],x];
	dfy=D[f[[2]],y];
	dfz=D[f[[3]],z];
	Echo["x\:5206\:91cf\:6c42\:5bfc\:7ed3\:679c\:4e3a\:ff1a"<>Str@dfx];
	Echo["y\:5206\:91cf\:6c42\:5bfc\:7ed3\:679c\:4e3a\:ff1a"<>Str@dfy];
	Echo["z\:5206\:91cf\:6c42\:5bfc\:7ed3\:679c\:4e3a\:ff1a"<>Str@dfz];
	Echo["\:6563\:5ea6\:4e3a\:ff1a("<>Str@dfx<>")+("<>Str@dfy<>")+("<>Str@dfz<>")= "<>Str[dfx+dfy+dfz]];
];
CurlProcess[f_,{x_,y_}]:=Module[{left,right},
	left=D[f[[2]],x];
	Echo[left,"\!\(\*FractionBox[\(d\), \(dx\)]\)["<>ToString[f[[2]]]<>"]="];
	right=D[f[[1]],y];
	Echo[right,"\!\(\*FractionBox[\(d\), \(dy\)]\)["<>ToString[f[[1]]]<>"]="];
	Echo[left-right,"\:65cb\:5ea6\:ff1a"];
];
CurlProcess3D[v_,{x_,y_,z_}]:=Module[{i,j,k},
	i=D[v[[3]],y]-D[v[[2]],z];
	Echo[i,"i=\!\(\*FractionBox[\(\[PartialD]\), \(\[PartialD]y\)]\)["<>ToString[v[[3]]]<>"]"<>"-\!\(\*FractionBox[\(\[PartialD]\), \(\[PartialD]z\)]\)["<>ToString[v[[2]]]<>"]="];
	j=D[v[[1]],z]-D[v[[3]],x];
	Echo[j,"j=\!\(\*FractionBox[\(\[PartialD]\), \(\[PartialD]z\)]\)["<>ToString[v[[1]]]<>"]-"<>"\!\(\*FractionBox[\(\[PartialD]\), \(\[PartialD]x\)]\)["<>ToString[v[[3]]]<>"]="];
	k=D[v[[2]],x]-D[v[[1]],y];
	Echo[k,"k=\!\(\*FractionBox[\(\[PartialD]\), \(\[PartialD]x\)]\)["<>ToString[v[[2]]]<>"]-"<>"\!\(\*FractionBox[\(\[PartialD]\), \(\[PartialD]y\)]\)["<>ToString[v[[1]]]<>"]="];
	Echo[{i,j,k},"\:65cb\:5ea6={i,j,k}="]
];
Flux[v_,{x_,y_,z_},g_,{a_,amin_,amax_},{b_,bmin_,bmax_}]:=Module[{dga,dgb,dS,vp,i1,i2},
	dga=Simplify@D[g,a];
	Echo["\:53c2\:65701\:7684\:504f\:5bfc\:6570\:4e3a\:ff1a"<>Str@dga];
	dgb=Simplify@D[g,b];
	Echo["\:53c2\:65702\:7684\:504f\:5bfc\:6570\:4e3a\:ff1a"<>Str@dgb];
	dS=Simplify[dga\[Cross]dgb];
	Echo["\:9762\:79ef\:5fae\:5143\:7684\:8868\:8fbe\:5f0f\:4e3a\:ff1a"<>Str@dS];
	vp=Simplify[v/.{x->g[[1]],y->g[[2]],z->g[[3]]}];
	Echo["\:53c2\:6570\:5316\:540e\:7684\:5411\:91cf\:573a\:8868\:8fbe\:5f0f\:4e3a\:ff1a"<>Str@vp];
	i1=Simplify@Integrate[vp . dS,{a,amin,amax},Assumptions->{amax\[Element]Reals,amin\[Element]Reals}];
	Echo["\:5bf9\:7b2c\:4e00\:5c42\:79ef\:5206\:ff08\:53c2\:65701\:ff09\:7ed3\:679c\:4e3a\:ff1a"<>Str@i1];
	i2=Simplify@Integrate[i1,{b,bmin,bmax},Assumptions->{bmax\[Element]Reals,bmin\[Element]Reals}];
	Echo["\:5bf9\:7b2c\:4e8c\:5c42\:79ef\:5206\:ff08\:53c2\:65702\:ff09\:7ed3\:679c\:4e3a\:ff1a"<>Str@i2];
	i2
];

LineIntegrate[v_,{x_,y_,z_},c_,{a_,amax_,amin_}]:=Module[{dca,vp,dot,i},
	dca=Simplify@D[c,a];
	vp=Simplify@v/.{x->c[[1]],y->c[[2]],z->c[[3]]};
	dot=Simplify[vp . dca];
	i=Simplify@Integrate[dot,{a,amax,amin},Assumptions->{amax\[Element]Reals,amin\[Element]Reals}];
	Echo["\:8def\:5f84\:7684\:5207\:5411\:91cf\:4e3a\:ff1a"<>Str@dca];
	Echo["\:53c2\:6570\:5316\:540e\:7684\:5411\:91cf\:573a\:4e3a\:ff1a"<>Str@vp];
	Echo["\:573a\:4e0e\:5207\:5411\:91cf\:7684\:5185\:79ef\:4e3a\:ff1a"<>Str@dot];
	Echo["\:7ebf\:79ef\:5206\:7684\:7ed3\:679c\:4e3a\:ff1a"<>Str@i];
	dot
];

ParticularSolve[coe_,rhs_,guess_,const_,t_]:=Module[{dguess,dguess2,lhs,equa,equb,equc,rnd,s},
	dguess=Table[Simplify@D[guess,{t,Length@coe-1-i}],{i,0,Length@coe-1}];
	Echo["\:731c\:89e3\:7684\:5404\:9636\:5bfc\:6570\:ff08\:964d\:5e8f\:ff09\:4e3a\:ff1a"<>Str@dguess];
	lhs=Simplify[coe . dguess];
	Echo["\:4ee3\:5165\:540e\:65b9\:7a0b\:5de6\:624b\:8fb9\:4e3a\:ff1a"<>Str@lhs];
	rnd=RandomInteger[]-RandomInteger[];
	equa=(lhs/.{t->rnd})==(rhs/.{t->rnd});
	rnd=RandomInteger[]+RandomInteger[];
	equb=(lhs/.{t->rnd})==(rhs/.{t->rnd});
	s=Simplify@Solve[{equa,equb},const];
	Print["\:5f85\:5b9a\:7cfb\:6570\:89e3\:5f97\:ff1a"<>Str@s];
];

IsOrthogonal[fx_,gx_,{x_,xmin_,xmax_}]:=Integrate[fx*gx,{x,xmin,xmax},Assumptions->{xmax\[Element]Reals,xmin\[Element]Reals}]==0;

OrthogonalInterval[fx_,gx_,x_]:=Solve[Integrate[fx*gx,x]==0,x];

BaseFunctionCoefficients[fx_,basis_,{x_,xmin_,xmax_}]:=Module[{coe,s},
	coe=Table[Integrate[fx*basis[[i]],{x,xmin,xmax}],{i,1,basis//Length}];
	s=Simplify[basis . coe/fx];
	coe/s
];

FunctionEigenvalues[o_,f_]:=Simplify@(o[f]/f);
IsOddFunction[fx_]:=Simplify[fx[x]]==Simplify[-fx[-x]];

IsEvenFunction[fx_]:=Simplify[fx[x]]==Simplify[fx[-x]];

FourierCoeA[f_,{x_,xmin_,xmax_}]:=Module[{L,i},
	L=xmax-xmin;

	i=2/L Integrate[f*Sin[(2\[Pi] n)/L x],{x,xmin,xmax},Assumptions->{xmin\[Element]Reals,xmax\[Element]Reals,xmin<0,xmax>0}];
	Simplify[i,{n\[Element]Integers,n>=0}]
];

FourierCoeB[f_,{x_,xmin_,xmax_}]:=Module[{L,i},
	L=xmax-xmin;

	i=2/L Integrate[f*Cos[(2\[Pi] n)/L x],{x,xmin,xmax},Assumptions->{xmin\[Element]Reals,xmax\[Element]Reals,xmin<0,xmax>0}];
	Simplify[i,{n\[Element]Integers,n>=0}]
];

VecPlot[f_,x_,y_]:=VectorPlot[f,{x,-10,10},{y,-10,10},VectorScaling->"Linear",VectorStyle->Black,VectorColorFunction->None];

FieldPlot[f_,\[Phi]_,x_,y_]:=Show[ContourPlot[\[Phi],{x,-10,10},{y,-10,10}],VecPlot[f,x,y]];

QP[\[Psi]_,t_,{x_,xmin_,xmax_}]:=Integrate[Norm[\[Psi]]^2,{x,xmin,xmax}];

SimplifyConjugate[f_,reals_]:=Module[{assums},
assums=Table[Element[reals[[i]],Reals],{i,1,reals//Length}];
Simplify[Conjugate@f,Assumptions->assums]//TraditionalForm
]

SimplifyNormSquare[f_,reals_]:=Simplify[f*SimplifyConjugate[f,reals]]//TraditionalForm;

ListD[fname_,f_,x_,t_]:=Module[{dx1,dx2,dt1,dt2,dxs,dts},
dx1=D[f,x];
dx2=D[f,{x,2}];
dt1=D[f,t];
dt2=D[f,{t,2}];
Echo["\:5bf9x\:7684\:4e00\:9636\:5bfc\:6570\:4e3a"<>Str@dx1];
Echo["\:5bf9x\:7684\:4e8c\:9636\:5bfc\:6570\:4e3a"<>Str@dx2];
Echo["\:5bf9t\:7684\:4e00\:9636\:5bfc\:6570\:4e3a"<>Str@dt1];
Echo["\:5bf9t\:7684\:4e8c\:9636\:5bfc\:6570\:4e3a"<>Str@dt2];
dxs=List[Rule[\!\(
\*SubscriptBox[\(\[PartialD]\), \(x\)]fname\),dx1],Rule[\!\(
\*SubscriptBox[\(\[PartialD]\), \(x, x\)]fname\),dx2]];
dts=List[Rule[\!\(
\*SubscriptBox[\(\[PartialD]\), \(t\)]fname\),dt1],Rule[\!\(
\*SubscriptBox[\(\[PartialD]\), \(t, t\)]fname\),dt2]];
List[dxs,dts]
]

IntegrateProcess[f_,{x_,xmin_,xmax_}]:=Module[{ttf,simpf,integ,simpi,imin,imax},
ttf=ToString@TraditionalForm@#&;
simpf=Simplify[f];
integ=Integrate[f,x];
simpi=Simplify@integ;
imin=integ/.{x->xmin};
imax=integ/.{x->xmax};
Echo["\:79ef\:5206\:5f97\:ff1a"<>ToString[HoldForm@\[Integral]f \[DifferentialD]x,TraditionalForm]<>"="<>ttf@integ<>"="<>ttf@simpi];
Echo["\:4ee3\:5165\:4e0a\:4e0b\:9650\:5f97\:ff1a"<>Str@imax<>"-"<>Str@imin<>"="<>Str[imax-imin]];
]

LipidLc[n_]:=0.154+0.1265(n-1);

LipidV[n_]:=27.4+26.9(n-1)10^-3;

LipidPackingParameters[V_,a0_,lc_]:=V/(a0 lc);

LipidDeltaGibbs[\[Gamma]_,a_,a0_]:=2\[Gamma] a0 + \[Gamma]/a0 (a-a0)^2;

LipidPhase[b1_,b2_,b3_]:=Module[{a1,a2,a3,pairs,len,ps,stddv},
pairs=
{{"Ia3d",{\[Sqrt]6,\[Sqrt]8,\[Sqrt]14}},
{"Pn3m",{\[Sqrt]2,\[Sqrt]3,\[Sqrt]4}},
{"Im3m",{\[Sqrt]2,\[Sqrt]4,\[Sqrt]6}},
{"Lamellar",{1,2,3}},
{"Hexagonal",{1,\[Sqrt]3,2}},
{"Fd3m",{\[Sqrt]3,\[Sqrt]8,\[Sqrt]11}}};
len = pairs//Length;
a1=(2\[Pi])/b1;
a2=(2\[Pi])/b2;
a3=(2\[Pi])/b3;
Echo[{a1,a2,a3},"Grid coordinate"];
ps=Table[{pairs[[i]][[2]][[1]]a1,pairs[[i]][[2]][[2]]a2,pairs[[i]][[2]][[3]]a3},{i,len}];
Table[Echo[ps[[i]],pairs[[i]][[1]]],{i,len}];
stddv=Table[StandardDeviation@{pairs[[i]][[2]][[1]]a1,pairs[[i]][[2]][[2]]a2,pairs[[i]][[2]][[3]]a3},{i,pairs//Length}];
Echo[pairs[[Ordering[stddv,1]]][[1]][[1]],"Most-likely phase"];
];

FRETk[\[Tau]_,R0_,r_]:=1/\[Tau] (R0/r)^6;

FRETe[R0_,r_]:=R0^6/(R0^6+r^6);

FRETe[Fd_,Fda_]:=1-Fda/Fd;

StateLifetime[kIC_,kFl_,kISC_]:=1/(kIC+kFl+kISC);

DNAVolumeFraction[Nbp_,V_]:=Nbp/V;

ProteinkDa[Naa_]:=110 Naa;

QuantumEfficiency[kIC_,kFl_,kISC_]:=kFl/(kFl+kIC+kISC);


End[];


EndPackage[];
