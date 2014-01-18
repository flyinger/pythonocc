// HXX wrapper generated by pythonOCC generate_code.py script.
#ifndef __IGESSelect_wrapper__
#define __IGESSelect_wrapper__

#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_Activator.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_AddFileComment.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_AddGroup.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_AutoCorrect.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_ChangeLevelList.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_ChangeLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_ComputeStatus.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_CounterOfLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_DispPerDrawing.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_DispPerSingleView.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_Dumper.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_EditDirPart.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_EditHeader.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_FileModifier.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_FloatFormat.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_IGESName.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_IGESTypeForm.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_ModelModifier.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_RebuildDrawings.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_RebuildGroups.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_RemoveCurves.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectBasicGeom.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectBypassGroup.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectBypassSubfigure.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectDrawingFrom.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectFaces.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectFromDrawing.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectFromSingleView.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectName.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectPCurves.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectSingleViewFrom.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectSubordinate.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SelectVisibleStatus.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SetGlobalParameter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SetLabel.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SetVersion5.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SignColor.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SignLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SignStatus.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_SplineToBSpline.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_UpdateCreationDate.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_UpdateFileName.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_UpdateLastChange.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_ViewSorter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_IGESSelect_WorkLibrary.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_Activator.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_AddFileComment.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_AddGroup.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_AutoCorrect.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_ChangeLevelList.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_ChangeLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_ComputeStatus.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_CounterOfLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_DispPerDrawing.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_DispPerSingleView.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_Dumper.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_EditDirPart.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_EditHeader.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_FileModifier.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_FloatFormat.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_IGESName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_IGESTypeForm.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_ModelModifier.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_RebuildDrawings.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_RebuildGroups.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_RemoveCurves.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectBasicGeom.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectBypassGroup.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectBypassSubfigure.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectDrawingFrom.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectFaces.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectFromDrawing.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectFromSingleView.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectPCurves.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectSingleViewFrom.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectSubordinate.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SelectVisibleStatus.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SetGlobalParameter.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SetLabel.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SetVersion5.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SignColor.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SignLevelNumber.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SignStatus.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_SplineToBSpline.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_UpdateCreationDate.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_UpdateFileName.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_UpdateLastChange.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_ViewSorter.hxx"
#include "/Library/OCE/0.14/include/oce/IGESSelect_WorkLibrary.hxx"

#endif __IGESSelect_wrapper__
