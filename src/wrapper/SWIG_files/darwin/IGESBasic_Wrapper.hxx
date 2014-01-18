// HXX wrapper generated by pythonOCC generate_code.py script.
#ifndef __IGESBasic_wrapper__
#define __IGESBasic_wrapper__

#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_AssocGroupType.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ExternalRefFile.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ExternalRefFileIndex.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ExternalRefFileName.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ExternalRefLibName.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ExternalRefName.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ExternalReferenceFile.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_GeneralModule.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_Group.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_GroupWithoutBackP.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray1OfHArray1OfIGESEntity.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray1OfHArray1OfInteger.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray1OfHArray1OfReal.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray1OfHArray1OfXY.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray1OfHArray1OfXYZ.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray1OfLineFontEntity.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_HArray2OfHArray1OfReal.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_Hierarchy.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_Name.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_OrderedGroup.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_OrderedGroupWithoutBackP.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_Protocol.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_ReadWriteModule.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_SingleParent.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_SingularSubfigure.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_SpecificModule.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESBasic_SubfigureDef.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_Array1OfLineFontEntity.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_Array2OfHArray1OfReal.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_AssocGroupType.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ExternalRefFile.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ExternalRefFileIndex.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ExternalRefFileName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ExternalRefLibName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ExternalRefName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ExternalReferenceFile.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_GeneralModule.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_Group.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_GroupWithoutBackP.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray1OfHArray1OfIGESEntity.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray1OfHArray1OfInteger.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray1OfHArray1OfReal.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray1OfHArray1OfXY.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray1OfHArray1OfXYZ.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray1OfLineFontEntity.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_HArray2OfHArray1OfReal.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_Hierarchy.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_Name.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_OrderedGroup.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_OrderedGroupWithoutBackP.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_Protocol.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ReadWriteModule.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_SingleParent.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_SingularSubfigure.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_SpecificModule.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_SubfigureDef.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolAssocGroupType.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolExternalRefFile.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolExternalRefFileIndex.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolExternalRefFileName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolExternalRefLibName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolExternalRefName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolExternalReferenceFile.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolGroup.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolGroupWithoutBackP.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolHierarchy.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolOrderedGroup.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolOrderedGroupWithoutBackP.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolSingleParent.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolSingularSubfigure.hxx"
#include "/Library/OCE/0.14/include/oce/IGESBasic_ToolSubfigureDef.hxx"

#endif __IGESBasic_wrapper__
