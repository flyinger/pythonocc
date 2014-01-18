// HXX wrapper generated by pythonOCC generate_code.py script.
#ifndef __TopOpeBRepBuild_wrapper__
#define __TopOpeBRepBuild_wrapper__

#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_HBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_ListNodeOfListOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_ListNodeOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_ListNodeOfListOfPave.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_Loop.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_TopOpeBRepBuild_Pave.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Area1dBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Area2dBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Area3dBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_AreaBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_BlockBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_BlockIterator.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Builder1.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_BuilderON.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_CompositeClassifier.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_CorrectFace2d.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_DataMapIteratorOfDataMapOfShapeListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_DataMapNodeOfDataMapOfShapeListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_EdgeBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_FaceAreaBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_FaceBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_FuseFace.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_GIter.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_GTool.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_GTopo.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_HBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_IndexedDataMapNodeOfIndexedDataMapOfShapeVertexInfo.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_IndexedDataMapOfShapeVertexInfo.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListIteratorOfListOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListIteratorOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListIteratorOfListOfPave.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListIteratorOfListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListNodeOfListOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListNodeOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListNodeOfListOfPave.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListNodeOfListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListOfListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListOfLoop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListOfPave.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ListOfShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Loop.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_LoopClassifier.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_LoopEnum.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_LoopSet.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_PBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_PGTopo.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_PWireEdgeSet.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Pave.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_PaveClassifier.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_PaveSet.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ShapeListOfShape.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ShapeSet.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ShellFaceClassifier.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ShellFaceSet.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_ShellToSolid.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_SolidAreaBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_SolidBuilder.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_SplitFace.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Tools.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_Tools2d.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_VertexInfo.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_WireEdgeClassifier.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_WireEdgeSet.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_WireToFace.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_define.hxx"
#include "/Library/OCE/0.14/include/oce/TopOpeBRepBuild_kpresu.hxx"

#endif __TopOpeBRepBuild_wrapper__
