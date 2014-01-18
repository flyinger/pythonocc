/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<GEOMImpl_3DSketcherDriver.hxx>
#include<GEOMImpl_ArcDriver.hxx>
#include<GEOMImpl_ArchimedeDriver.hxx>
#include<GEOMImpl_Block6Explorer.hxx>
#include<GEOMImpl_BlockDriver.hxx>
#include<GEOMImpl_BooleanDriver.hxx>
#include<GEOMImpl_BoxDriver.hxx>
#include<GEOMImpl_ChamferDriver.hxx>
#include<GEOMImpl_CircleDriver.hxx>
#include<GEOMImpl_ConeDriver.hxx>
#include<GEOMImpl_CopyDriver.hxx>
#include<GEOMImpl_CurveDriver.hxx>
#include<GEOMImpl_CylinderDriver.hxx>
#include<GEOMImpl_DiskDriver.hxx>
#include<GEOMImpl_DraftDriver.hxx>
#include<GEOMImpl_EllipseDriver.hxx>
#include<GEOMImpl_ExportDriver.hxx>
#include<GEOMImpl_FaceDriver.hxx>
#include<GEOMImpl_Fillet1d.hxx>
#include<GEOMImpl_Fillet1dDriver.hxx>
#include<GEOMImpl_FilletDriver.hxx>
#include<GEOMImpl_FillingDriver.hxx>
#include<GEOMImpl_Gen.hxx>
#include<GEOMImpl_GlueDriver.hxx>
#include<GEOMImpl_HealingDriver.hxx>
#include<GEOMImpl_I3DPrimOperations.hxx>
#include<GEOMImpl_I3DSketcher.hxx>
#include<GEOMImpl_IAdvancedOperations.hxx>
#include<GEOMImpl_IArc.hxx>
#include<GEOMImpl_IArchimede.hxx>
#include<GEOMImpl_IBasicOperations.hxx>
#include<GEOMImpl_IBlockTrsf.hxx>
#include<GEOMImpl_IBlocks.hxx>
#include<GEOMImpl_IBlocksOperations.hxx>
#include<GEOMImpl_IBoolean.hxx>
#include<GEOMImpl_IBooleanOperations.hxx>
#include<GEOMImpl_IBox.hxx>
#include<GEOMImpl_IChamfer.hxx>
#include<GEOMImpl_ICircle.hxx>
#include<GEOMImpl_ICone.hxx>
#include<GEOMImpl_ICopy.hxx>
#include<GEOMImpl_ICurve.hxx>
#include<GEOMImpl_ICurvesOperations.hxx>
#include<GEOMImpl_ICylinder.hxx>
#include<GEOMImpl_IDisk.hxx>
#include<GEOMImpl_IDraft.hxx>
#include<GEOMImpl_IEllipse.hxx>
#include<GEOMImpl_IFace.hxx>
#include<GEOMImpl_IFillet.hxx>
#include<GEOMImpl_IFillet1d.hxx>
#include<GEOMImpl_IFilling.hxx>
#include<GEOMImpl_IGlue.hxx>
#include<GEOMImpl_IGroupOperations.hxx>
#include<GEOMImpl_IHealing.hxx>
#include<GEOMImpl_IHealingOperations.hxx>
#include<GEOMImpl_IImportExport.hxx>
#include<GEOMImpl_IInsertOperations.hxx>
#include<GEOMImpl_ILine.hxx>
#include<GEOMImpl_ILocalOperations.hxx>
#include<GEOMImpl_IMarker.hxx>
#include<GEOMImpl_IMeasure.hxx>
#include<GEOMImpl_IMeasureOperations.hxx>
#include<GEOMImpl_IMirror.hxx>
#include<GEOMImpl_INSketcher.hxx>
#include<GEOMImpl_IOffset.hxx>
#include<GEOMImpl_IPartition.hxx>
#include<GEOMImpl_IPipe.hxx>
#include<GEOMImpl_IPipeBiNormal.hxx>
#include<GEOMImpl_IPipeDiffSect.hxx>
#include<GEOMImpl_IPipeShellSect.hxx>
#include<GEOMImpl_IPipeTShape.hxx>
#include<GEOMImpl_IPlane.hxx>
#include<GEOMImpl_IPlate.hxx>
#include<GEOMImpl_IPoint.hxx>
#include<GEOMImpl_IPolyline.hxx>
#include<GEOMImpl_IPosition.hxx>
#include<GEOMImpl_IPrism.hxx>
#include<GEOMImpl_IRevolution.hxx>
#include<GEOMImpl_IRotate.hxx>
#include<GEOMImpl_IScale.hxx>
#include<GEOMImpl_IShapes.hxx>
#include<GEOMImpl_IShapesOperations.hxx>
#include<GEOMImpl_ISketcher.hxx>
#include<GEOMImpl_ISketcherOperations.hxx>
#include<GEOMImpl_ISphere.hxx>
#include<GEOMImpl_ISpline.hxx>
#include<GEOMImpl_IThickSolid.hxx>
#include<GEOMImpl_IThruSections.hxx>
#include<GEOMImpl_ITorus.hxx>
#include<GEOMImpl_ITransformOperations.hxx>
#include<GEOMImpl_ITranslate.hxx>
#include<GEOMImpl_IVariableFillet.hxx>
#include<GEOMImpl_IVector.hxx>
#include<GEOMImpl_ImportDriver.hxx>
#include<GEOMImpl_LineDriver.hxx>
#include<GEOMImpl_MarkerDriver.hxx>
#include<GEOMImpl_MeasureDriver.hxx>
#include<GEOMImpl_MirrorDriver.hxx>
#include<GEOMImpl_NSketcherDriver.hxx>
#include<GEOMImpl_OffsetDriver.hxx>
#include<GEOMImpl_PartitionDriver.hxx>
#include<GEOMImpl_PipeDriver.hxx>
#include<GEOMImpl_PipeTShapeDriver.hxx>
#include<GEOMImpl_PlaneDriver.hxx>
#include<GEOMImpl_PlateDriver.hxx>
#include<GEOMImpl_PointDriver.hxx>
#include<GEOMImpl_PolylineDriver.hxx>
#include<GEOMImpl_PositionDriver.hxx>
#include<GEOMImpl_PrismDriver.hxx>
#include<GEOMImpl_ProjectionDriver.hxx>
#include<GEOMImpl_RevolutionDriver.hxx>
#include<GEOMImpl_RotateDriver.hxx>
#include<GEOMImpl_ScaleDriver.hxx>
#include<GEOMImpl_ShapeDriver.hxx>
#include<GEOMImpl_SketcherDriver.hxx>
#include<GEOMImpl_SphereDriver.hxx>
#include<GEOMImpl_SplineDriver.hxx>
#include<GEOMImpl_ThickSolidDriver.hxx>
#include<GEOMImpl_ThruSectionsDriver.hxx>
#include<GEOMImpl_TorusDriver.hxx>
#include<GEOMImpl_TranslateDriver.hxx>
#include<GEOMImpl_Types.hxx>
#include<GEOMImpl_VariableFilletDriver.hxx>
#include<GEOMImpl_VectorDriver.hxx>

// Additional headers necessary for compilation.

#include<Aspect.hxx>
#include<Aspect_Array1OfEdge.hxx>
#include<Aspect_AspectFillArea.hxx>
#include<Aspect_AspectFillAreaDefinitionError.hxx>
#include<Aspect_AspectLine.hxx>
#include<Aspect_AspectLineDefinitionError.hxx>
#include<Aspect_AspectMarker.hxx>
#include<Aspect_AspectMarkerDefinitionError.hxx>
#include<Aspect_Background.hxx>
#include<Aspect_BadAccess.hxx>
#include<Aspect_CLayer2d.hxx>
#include<Aspect_CardinalPoints.hxx>
#include<Aspect_CircularGrid.hxx>
#include<Aspect_ColorCubeColorMap.hxx>
#include<Aspect_ColorMap.hxx>
#include<Aspect_ColorMapDefinitionError.hxx>
#include<Aspect_ColorMapEntry.hxx>
#include<Aspect_ColorPixel.hxx>
#include<Aspect_ColorRampColorMap.hxx>
#include<Aspect_ColorScale.hxx>
#include<Aspect_Convert.hxx>
#include<Aspect_Display.hxx>
#include<Aspect_DisplayConnection.hxx>
#include<Aspect_DisplayConnectionDefinitionError.hxx>
#include<Aspect_DisplayConnection_Handle.hxx>
#include<Aspect_Drawable.hxx>
#include<Aspect_Driver.hxx>
#include<Aspect_DriverDefinitionError.hxx>
#include<Aspect_DriverError.hxx>
#include<Aspect_DriverPtr.hxx>
#include<Aspect_Edge.hxx>
#include<Aspect_EdgeDefinitionError.hxx>
#include<Aspect_FStream.hxx>
#include<Aspect_FillMethod.hxx>
#include<Aspect_FontMap.hxx>
#include<Aspect_FontMapDefinitionError.hxx>
#include<Aspect_FontMapEntry.hxx>
#include<Aspect_FontStyle.hxx>
#include<Aspect_FontStyleDefinitionError.hxx>
#include<Aspect_FormatOfSheetPaper.hxx>
#include<Aspect_GenId.hxx>
#include<Aspect_GenericColorMap.hxx>
#include<Aspect_GradientBackground.hxx>
#include<Aspect_GradientFillMethod.hxx>
#include<Aspect_GraphicCallbackProc.hxx>
#include<Aspect_GraphicDeviceDefinitionError.hxx>
#include<Aspect_Grid.hxx>
#include<Aspect_GridDrawMode.hxx>
#include<Aspect_GridType.hxx>
#include<Aspect_Handle.hxx>
#include<Aspect_HatchStyle.hxx>
#include<Aspect_IFStream.hxx>
#include<Aspect_IdentDefinitionError.hxx>
#include<Aspect_IndexPixel.hxx>
#include<Aspect_InteriorStyle.hxx>
#include<Aspect_LineStyle.hxx>
#include<Aspect_LineStyleDefinitionError.hxx>
#include<Aspect_LineWidthDefinitionError.hxx>
#include<Aspect_ListingType.hxx>
#include<Aspect_MarkMap.hxx>
#include<Aspect_MarkMapDefinitionError.hxx>
#include<Aspect_MarkMapEntry.hxx>
#include<Aspect_MarkerStyle.hxx>
#include<Aspect_MarkerStyleDefinitionError.hxx>
#include<Aspect_Pixel.hxx>
#include<Aspect_PixmapDefinitionError.hxx>
#include<Aspect_PixmapError.hxx>
#include<Aspect_PlotMode.hxx>
#include<Aspect_PlotterOrigin.hxx>
#include<Aspect_PolyStyleDefinitionError.hxx>
#include<Aspect_PolygonOffsetMode.hxx>
#include<Aspect_PrintAlgo.hxx>
#include<Aspect_RGBPixel.hxx>
#include<Aspect_RectangularGrid.hxx>
#include<Aspect_RenderingContext.hxx>
#include<Aspect_SequenceNodeOfSequenceOfColor.hxx>
#include<Aspect_SequenceNodeOfSequenceOfColorMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfFontMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfMarkMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfTypeMapEntry.hxx>
#include<Aspect_SequenceNodeOfSequenceOfWidthMapEntry.hxx>
#include<Aspect_SequenceOfColor.hxx>
#include<Aspect_SequenceOfColorMapEntry.hxx>
#include<Aspect_SequenceOfFontMapEntry.hxx>
#include<Aspect_SequenceOfMarkMapEntry.hxx>
#include<Aspect_SequenceOfTypeMapEntry.hxx>
#include<Aspect_SequenceOfWidthMapEntry.hxx>
#include<Aspect_TypeMap.hxx>
#include<Aspect_TypeMapDefinitionError.hxx>
#include<Aspect_TypeMapEntry.hxx>
#include<Aspect_TypeOfColorMap.hxx>
#include<Aspect_TypeOfColorScaleData.hxx>
#include<Aspect_TypeOfColorScaleOrientation.hxx>
#include<Aspect_TypeOfColorScalePosition.hxx>
#include<Aspect_TypeOfColorSpace.hxx>
#include<Aspect_TypeOfConstraint.hxx>
#include<Aspect_TypeOfDeflection.hxx>
#include<Aspect_TypeOfDisplayText.hxx>
#include<Aspect_TypeOfDrawMode.hxx>
#include<Aspect_TypeOfEdge.hxx>
#include<Aspect_TypeOfFacingModel.hxx>
#include<Aspect_TypeOfFont.hxx>
#include<Aspect_TypeOfHighlightMethod.hxx>
#include<Aspect_TypeOfLayer.hxx>
#include<Aspect_TypeOfLine.hxx>
#include<Aspect_TypeOfMarker.hxx>
#include<Aspect_TypeOfPrimitive.hxx>
#include<Aspect_TypeOfRenderingMode.hxx>
#include<Aspect_TypeOfResize.hxx>
#include<Aspect_TypeOfStyleText.hxx>
#include<Aspect_TypeOfText.hxx>
#include<Aspect_TypeOfTriedronEcho.hxx>
#include<Aspect_TypeOfTriedronPosition.hxx>
#include<Aspect_TypeOfUpdate.hxx>
#include<Aspect_UndefinedMap.hxx>
#include<Aspect_Units.hxx>
#include<Aspect_WidthMap.hxx>
#include<Aspect_WidthMapDefinitionError.hxx>
#include<Aspect_WidthMapEntry.hxx>
#include<Aspect_WidthOfLine.hxx>
#include<Aspect_Window.hxx>
#include<Aspect_WindowDefinitionError.hxx>
#include<Aspect_WindowDriver.hxx>
#include<Aspect_WindowDriverPtr.hxx>
#include<Aspect_WindowError.hxx>
#include<CDF.hxx>
#include<CDF_Application.hxx>
#include<CDF_Directory.hxx>
#include<CDF_DirectoryIterator.hxx>
#include<CDF_MetaDataDriver.hxx>
#include<CDF_MetaDataDriverError.hxx>
#include<CDF_MetaDataDriverFactory.hxx>
#include<CDF_Session.hxx>
#include<CDF_Store.hxx>
#include<CDF_StoreList.hxx>
#include<CDF_StoreSetNameStatus.hxx>
#include<CDF_SubComponentStatus.hxx>
#include<CDF_Timer.hxx>
#include<CDF_TryStoreStatus.hxx>
#include<CDF_TypeOfActivation.hxx>
#include<CDM_Application.hxx>
#include<CDM_COutMessageDriver.hxx>
#include<CDM_CanCloseStatus.hxx>
#include<CDM_DataMapIteratorOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapIteratorOfPresentationDirectory.hxx>
#include<CDM_DataMapNodeOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapNodeOfPresentationDirectory.hxx>
#include<CDM_Document.hxx>
#include<CDM_DocumentHasher.hxx>
#include<CDM_DocumentPointer.hxx>
#include<CDM_ListIteratorOfListOfDocument.hxx>
#include<CDM_ListIteratorOfListOfReferences.hxx>
#include<CDM_ListNodeOfListOfDocument.hxx>
#include<CDM_ListNodeOfListOfReferences.hxx>
#include<CDM_ListOfDocument.hxx>
#include<CDM_ListOfReferences.hxx>
#include<CDM_MapIteratorOfMapOfDocument.hxx>
#include<CDM_MapOfDocument.hxx>
#include<CDM_MessageDriver.hxx>
#include<CDM_MetaData.hxx>
#include<CDM_MetaDataLookUpTable.hxx>
#include<CDM_NamesDirectory.hxx>
#include<CDM_NullMessageDriver.hxx>
#include<CDM_PresentationDirectory.hxx>
#include<CDM_Reference.hxx>
#include<CDM_ReferenceIterator.hxx>
#include<CDM_StackIteratorOfStackOfDocument.hxx>
#include<CDM_StackNodeOfStackOfDocument.hxx>
#include<CDM_StackOfDocument.hxx>
#include<CDM_StdMapNodeOfMapOfDocument.hxx>
#include<Handle_Storage_CallBack.hxx>
#include<Handle_Storage_Data.hxx>
#include<Handle_Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Handle_Storage_DataMapNodeOfMapOfPers.hxx>
#include<Handle_Storage_DefaultCallBack.hxx>
#include<Handle_Storage_HArrayOfCallBack.hxx>
#include<Handle_Storage_HArrayOfSchema.hxx>
#include<Handle_Storage_HPArray.hxx>
#include<Handle_Storage_HSeqOfCallBack.hxx>
#include<Handle_Storage_HSeqOfPersistent.hxx>
#include<Handle_Storage_HSeqOfRoot.hxx>
#include<Handle_Storage_HeaderData.hxx>
#include<Handle_Storage_IndexedDataMapNodeOfPType.hxx>
#include<Handle_Storage_InternalData.hxx>
#include<Handle_Storage_Root.hxx>
#include<Handle_Storage_RootData.hxx>
#include<Handle_Storage_Schema.hxx>
#include<Handle_Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include<Handle_Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include<Handle_Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Handle_Storage_StreamExtCharParityError.hxx>
#include<Handle_Storage_StreamFormatError.hxx>
#include<Handle_Storage_StreamModeError.hxx>
#include<Handle_Storage_StreamReadError.hxx>
#include<Handle_Storage_StreamTypeMismatchError.hxx>
#include<Handle_Storage_StreamUnknownTypeError.hxx>
#include<Handle_Storage_StreamWriteError.hxx>
#include<Handle_Storage_TypeData.hxx>
#include<Handle_Storage_TypedCallBack.hxx>
#include<Handle_TCollection_AVLBaseNode.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TCollection_HExtendedString.hxx>
#include<Handle_TCollection_MapNode.hxx>
#include<Handle_TCollection_SeqNode.hxx>
#include<PCDM.hxx>
#include<PCDMShape_Document.hxx>
#include<PCDM_BaseDriverPointer.hxx>
#include<PCDM_DOMHeaderParser.hxx>
#include<PCDM_Document.hxx>
#include<PCDM_DriverError.hxx>
#include<PCDM_ReadWriter.hxx>
#include<PCDM_ReadWriter_1.hxx>
#include<PCDM_Reader.hxx>
#include<PCDM_ReaderStatus.hxx>
#include<PCDM_Reference.hxx>
#include<PCDM_ReferenceIterator.hxx>
#include<PCDM_RetrievalDriver.hxx>
#include<PCDM_SequenceNodeOfSequenceOfDocument.hxx>
#include<PCDM_SequenceNodeOfSequenceOfReference.hxx>
#include<PCDM_SequenceOfDocument.hxx>
#include<PCDM_SequenceOfReference.hxx>
#include<PCDM_StorageDriver.hxx>
#include<PCDM_StoreStatus.hxx>
#include<PCDM_TypeOfFileDriver.hxx>
#include<PCDM_Writer.hxx>
#include<Quantity_AbsorbedDose.hxx>
#include<Quantity_Acceleration.hxx>
#include<Quantity_AcousticIntensity.hxx>
#include<Quantity_Activity.hxx>
#include<Quantity_Admittance.hxx>
#include<Quantity_AmountOfSubstance.hxx>
#include<Quantity_AngularVelocity.hxx>
#include<Quantity_Area.hxx>
#include<Quantity_Array1OfCoefficient.hxx>
#include<Quantity_Array1OfColor.hxx>
#include<Quantity_Array2OfColor.hxx>
#include<Quantity_Capacitance.hxx>
#include<Quantity_Coefficient.hxx>
#include<Quantity_CoefficientOfExpansion.hxx>
#include<Quantity_Color.hxx>
#include<Quantity_ColorDefinitionError.hxx>
#include<Quantity_Color_1.hxx>
#include<Quantity_Concentration.hxx>
#include<Quantity_Conductivity.hxx>
#include<Quantity_Constant.hxx>
#include<Quantity_Consumption.hxx>
#include<Quantity_Content.hxx>
#include<Quantity_Convert.hxx>
#include<Quantity_Date.hxx>
#include<Quantity_DateDefinitionError.hxx>
#include<Quantity_Density.hxx>
#include<Quantity_DoseEquivalent.hxx>
#include<Quantity_ElectricCapacitance.hxx>
#include<Quantity_ElectricCharge.hxx>
#include<Quantity_ElectricCurrent.hxx>
#include<Quantity_ElectricFieldStrength.hxx>
#include<Quantity_ElectricPotential.hxx>
#include<Quantity_Energy.hxx>
#include<Quantity_Enthalpy.hxx>
#include<Quantity_Entropy.hxx>
#include<Quantity_Factor.hxx>
#include<Quantity_Force.hxx>
#include<Quantity_Frequency.hxx>
#include<Quantity_HArray1OfColor.hxx>
#include<Quantity_Illuminance.hxx>
#include<Quantity_Impedance.hxx>
#include<Quantity_Index.hxx>
#include<Quantity_Inductance.hxx>
#include<Quantity_KinematicViscosity.hxx>
#include<Quantity_KineticMoment.hxx>
#include<Quantity_Length.hxx>
#include<Quantity_Luminance.hxx>
#include<Quantity_LuminousEfficacity.hxx>
#include<Quantity_LuminousExposition.hxx>
#include<Quantity_LuminousFlux.hxx>
#include<Quantity_LuminousIntensity.hxx>
#include<Quantity_MagneticFieldStrength.hxx>
#include<Quantity_MagneticFlux.hxx>
#include<Quantity_MagneticFluxDensity.hxx>
#include<Quantity_Mass.hxx>
#include<Quantity_MassFlow.hxx>
#include<Quantity_MolarConcentration.hxx>
#include<Quantity_MolarMass.hxx>
#include<Quantity_MolarVolume.hxx>
#include<Quantity_Molarity.hxx>
#include<Quantity_MomentOfAForce.hxx>
#include<Quantity_MomentOfInertia.hxx>
#include<Quantity_Momentum.hxx>
#include<Quantity_NameOfColor.hxx>
#include<Quantity_Normality.hxx>
#include<Quantity_Parameter.hxx>
#include<Quantity_Period.hxx>
#include<Quantity_PeriodDefinitionError.hxx>
#include<Quantity_PhysicalQuantity.hxx>
#include<Quantity_PlaneAngle.hxx>
#include<Quantity_Power.hxx>
#include<Quantity_Pressure.hxx>
#include<Quantity_Quotient.hxx>
#include<Quantity_Rate.hxx>
#include<Quantity_Ratio.hxx>
#include<Quantity_Reluctance.hxx>
#include<Quantity_Resistance.hxx>
#include<Quantity_Resistivity.hxx>
#include<Quantity_Scalaire.hxx>
#include<Quantity_SolidAngle.hxx>
#include<Quantity_SoundIntensity.hxx>
#include<Quantity_SpecificHeatCapacity.hxx>
#include<Quantity_Speed.hxx>
#include<Quantity_SurfaceTension.hxx>
#include<Quantity_Temperature.hxx>
#include<Quantity_ThermalConductivity.hxx>
#include<Quantity_Torque.hxx>
#include<Quantity_TypeOfColor.hxx>
#include<Quantity_Velocity.hxx>
#include<Quantity_Viscosity.hxx>
#include<Quantity_Volume.hxx>
#include<Quantity_VolumeFlow.hxx>
#include<Quantity_Weight.hxx>
#include<Quantity_Work.hxx>
#include<TDF.hxx>
#include<TDF_Attribute.hxx>
#include<TDF_AttributeArray1.hxx>
#include<TDF_AttributeDataMap.hxx>
#include<TDF_AttributeDelta.hxx>
#include<TDF_AttributeDeltaList.hxx>
#include<TDF_AttributeDoubleMap.hxx>
#include<TDF_AttributeIndexedMap.hxx>
#include<TDF_AttributeIterator.hxx>
#include<TDF_AttributeList.hxx>
#include<TDF_AttributeMap.hxx>
#include<TDF_AttributeSequence.hxx>
#include<TDF_ChildIDIterator.hxx>
#include<TDF_ChildIterator.hxx>
#include<TDF_ClosureMode.hxx>
#include<TDF_ClosureTool.hxx>
#include<TDF_ComparisonTool.hxx>
#include<TDF_CopyLabel.hxx>
#include<TDF_CopyTool.hxx>
#include<TDF_Data.hxx>
#include<TDF_DataMapIteratorOfAttributeDataMap.hxx>
#include<TDF_DataMapIteratorOfLabelDataMap.hxx>
#include<TDF_DataMapIteratorOfLabelIntegerMap.hxx>
#include<TDF_DataMapIteratorOfLabelLabelMap.hxx>
#include<TDF_DataMapNodeOfAttributeDataMap.hxx>
#include<TDF_DataMapNodeOfLabelDataMap.hxx>
#include<TDF_DataMapNodeOfLabelIntegerMap.hxx>
#include<TDF_DataMapNodeOfLabelLabelMap.hxx>
#include<TDF_DataSet.hxx>
#include<TDF_DefaultDeltaOnModification.hxx>
#include<TDF_DefaultDeltaOnRemoval.hxx>
#include<TDF_Delta.hxx>
#include<TDF_DeltaList.hxx>
#include<TDF_DeltaOnAddition.hxx>
#include<TDF_DeltaOnForget.hxx>
#include<TDF_DeltaOnModification.hxx>
#include<TDF_DeltaOnRemoval.hxx>
#include<TDF_DeltaOnResume.hxx>
#include<TDF_DoubleMapIteratorOfAttributeDoubleMap.hxx>
#include<TDF_DoubleMapIteratorOfGUIDProgIDMap.hxx>
#include<TDF_DoubleMapIteratorOfLabelDoubleMap.hxx>
#include<TDF_DoubleMapNodeOfAttributeDoubleMap.hxx>
#include<TDF_DoubleMapNodeOfGUIDProgIDMap.hxx>
#include<TDF_DoubleMapNodeOfLabelDoubleMap.hxx>
#include<TDF_GUIDProgIDMap.hxx>
#include<TDF_HAllocator.hxx>
#include<TDF_HAttributeArray1.hxx>
#include<TDF_IDFilter.hxx>
#include<TDF_IDList.hxx>
#include<TDF_IDMap.hxx>
#include<TDF_IndexedMapNodeOfAttributeIndexedMap.hxx>
#include<TDF_IndexedMapNodeOfLabelIndexedMap.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelDataMap.hxx>
#include<TDF_LabelDoubleMap.hxx>
#include<TDF_LabelIndexedMap.hxx>
#include<TDF_LabelIntegerMap.hxx>
#include<TDF_LabelLabelMap.hxx>
#include<TDF_LabelList.hxx>
#include<TDF_LabelMap.hxx>
#include<TDF_LabelMapHasher.hxx>
#include<TDF_LabelNode.hxx>
#include<TDF_LabelNodePtr.hxx>
#include<TDF_LabelSequence.hxx>
#include<TDF_ListIteratorOfAttributeDeltaList.hxx>
#include<TDF_ListIteratorOfAttributeList.hxx>
#include<TDF_ListIteratorOfDeltaList.hxx>
#include<TDF_ListIteratorOfIDList.hxx>
#include<TDF_ListIteratorOfLabelList.hxx>
#include<TDF_ListNodeOfAttributeDeltaList.hxx>
#include<TDF_ListNodeOfAttributeList.hxx>
#include<TDF_ListNodeOfDeltaList.hxx>
#include<TDF_ListNodeOfIDList.hxx>
#include<TDF_ListNodeOfLabelList.hxx>
#include<TDF_MapIteratorOfAttributeMap.hxx>
#include<TDF_MapIteratorOfIDMap.hxx>
#include<TDF_MapIteratorOfLabelMap.hxx>
#include<TDF_Reference.hxx>
#include<TDF_RelocationTable.hxx>
#include<TDF_SequenceNodeOfAttributeSequence.hxx>
#include<TDF_SequenceNodeOfLabelSequence.hxx>
#include<TDF_StdMapNodeOfAttributeMap.hxx>
#include<TDF_StdMapNodeOfIDMap.hxx>
#include<TDF_StdMapNodeOfLabelMap.hxx>
#include<TDF_TagSource.hxx>
#include<TDF_Tool.hxx>
#include<TDF_Transaction.hxx>
#include<TDataStd.hxx>
#include<TDataStd_AsciiString.hxx>
#include<TDataStd_BooleanArray.hxx>
#include<TDataStd_BooleanList.hxx>
#include<TDataStd_ByteArray.hxx>
#include<TDataStd_ChildNodeIterator.hxx>
#include<TDataStd_Comment.hxx>
#include<TDataStd_Current.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringByte.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringReal.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringString.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringByte.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringReal.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringString.hxx>
#include<TDataStd_DataMapOfStringByte.hxx>
#include<TDataStd_DataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapOfStringReal.hxx>
#include<TDataStd_DataMapOfStringString.hxx>
#include<TDataStd_DeltaOnModificationOfByteArray.hxx>
#include<TDataStd_DeltaOnModificationOfExtStringArray.hxx>
#include<TDataStd_DeltaOnModificationOfIntArray.hxx>
#include<TDataStd_DeltaOnModificationOfIntPackedMap.hxx>
#include<TDataStd_DeltaOnModificationOfRealArray.hxx>
#include<TDataStd_Directory.hxx>
#include<TDataStd_Expression.hxx>
#include<TDataStd_ExtStringArray.hxx>
#include<TDataStd_ExtStringList.hxx>
#include<TDataStd_HDataMapOfStringByte.hxx>
#include<TDataStd_HDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_HDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_HDataMapOfStringInteger.hxx>
#include<TDataStd_HDataMapOfStringReal.hxx>
#include<TDataStd_HDataMapOfStringString.hxx>
#include<TDataStd_HLabelArray1.hxx>
#include<TDataStd_IntPackedMap.hxx>
#include<TDataStd_Integer.hxx>
#include<TDataStd_IntegerArray.hxx>
#include<TDataStd_IntegerList.hxx>
#include<TDataStd_LabelArray1.hxx>
#include<TDataStd_ListIteratorOfListOfByte.hxx>
#include<TDataStd_ListIteratorOfListOfExtendedString.hxx>
#include<TDataStd_ListNodeOfListOfByte.hxx>
#include<TDataStd_ListNodeOfListOfExtendedString.hxx>
#include<TDataStd_ListOfByte.hxx>
#include<TDataStd_ListOfExtendedString.hxx>
#include<TDataStd_Name.hxx>
#include<TDataStd_NamedData.hxx>
#include<TDataStd_NoteBook.hxx>
#include<TDataStd_PtrTreeNode.hxx>
#include<TDataStd_Real.hxx>
#include<TDataStd_RealArray.hxx>
#include<TDataStd_RealEnum.hxx>
#include<TDataStd_RealList.hxx>
#include<TDataStd_ReferenceArray.hxx>
#include<TDataStd_ReferenceList.hxx>
#include<TDataStd_Relation.hxx>
#include<TDataStd_Tick.hxx>
#include<TDataStd_TreeNode.hxx>
#include<TDataStd_UAttribute.hxx>
#include<TDataStd_Variable.hxx>
#include<TDocStd.hxx>
#include<TDocStd_Application.hxx>
#include<TDocStd_ApplicationDelta.hxx>
#include<TDocStd_CompoundDelta.hxx>
#include<TDocStd_Context.hxx>
#include<TDocStd_DataMapIteratorOfLabelIDMapDataMap.hxx>
#include<TDocStd_DataMapNodeOfLabelIDMapDataMap.hxx>
#include<TDocStd_Document.hxx>
#include<TDocStd_LabelIDMapDataMap.hxx>
#include<TDocStd_Modified.hxx>
#include<TDocStd_MultiTransactionManager.hxx>
#include<TDocStd_Owner.hxx>
#include<TDocStd_PathParser.hxx>
#include<TDocStd_SequenceNodeOfSequenceOfApplicationDelta.hxx>
#include<TDocStd_SequenceNodeOfSequenceOfDocument.hxx>
#include<TDocStd_SequenceOfApplicationDelta.hxx>
#include<TDocStd_SequenceOfDocument.hxx>
#include<TDocStd_XLink.hxx>
#include<TDocStd_XLinkIterator.hxx>
#include<TDocStd_XLinkPtr.hxx>
#include<TDocStd_XLinkRoot.hxx>
#include<TDocStd_XLinkTool.hxx>
#include<TopoDS.hxx>
#include<TopoDSToStep.hxx>
#include<TopoDSToStep_Builder.hxx>
#include<TopoDSToStep_BuilderError.hxx>
#include<TopoDSToStep_FacetedError.hxx>
#include<TopoDSToStep_FacetedTool.hxx>
#include<TopoDSToStep_MakeBrepWithVoids.hxx>
#include<TopoDSToStep_MakeEdgeError.hxx>
#include<TopoDSToStep_MakeFaceError.hxx>
#include<TopoDSToStep_MakeFacetedBrep.hxx>
#include<TopoDSToStep_MakeFacetedBrepAndBrepWithVoids.hxx>
#include<TopoDSToStep_MakeGeometricCurveSet.hxx>
#include<TopoDSToStep_MakeManifoldSolidBrep.hxx>
#include<TopoDSToStep_MakeShellBasedSurfaceModel.hxx>
#include<TopoDSToStep_MakeStepEdge.hxx>
#include<TopoDSToStep_MakeStepFace.hxx>
#include<TopoDSToStep_MakeStepVertex.hxx>
#include<TopoDSToStep_MakeStepWire.hxx>
#include<TopoDSToStep_MakeVertexError.hxx>
#include<TopoDSToStep_MakeWireError.hxx>
#include<TopoDSToStep_Root.hxx>
#include<TopoDSToStep_Tool.hxx>
#include<TopoDSToStep_WireframeBuilder.hxx>
#include<TopoDS_Builder.hxx>
#include<TopoDS_CompSolid.hxx>
#include<TopoDS_Compound.hxx>
#include<TopoDS_Edge.hxx>
#include<TopoDS_Face.hxx>
#include<TopoDS_FrozenShape.hxx>
#include<TopoDS_HShape.hxx>
#include<TopoDS_Iterator.hxx>
#include<TopoDS_ListIteratorOfListOfShape.hxx>
#include<TopoDS_ListNodeOfListOfShape.hxx>
#include<TopoDS_ListOfShape.hxx>
#include<TopoDS_Shape.hxx>
#include<TopoDS_Shell.hxx>
#include<TopoDS_Solid.hxx>
#include<TopoDS_TCompSolid.hxx>
#include<TopoDS_TCompound.hxx>
#include<TopoDS_TEdge.hxx>
#include<TopoDS_TFace.hxx>
#include<TopoDS_TShape.hxx>
#include<TopoDS_TShell.hxx>
#include<TopoDS_TSolid.hxx>
#include<TopoDS_TVertex.hxx>
#include<TopoDS_TWire.hxx>
#include<TopoDS_UnCompatibleShapes.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Wire.hxx>
#include<gp.hxx>
#include<gp_Ax1.hxx>
#include<gp_Ax2.hxx>
#include<gp_Ax22d.hxx>
#include<gp_Ax2d.hxx>
#include<gp_Ax3.hxx>
#include<gp_Circ.hxx>
#include<gp_Circ2d.hxx>
#include<gp_Cone.hxx>
#include<gp_Cylinder.hxx>
#include<gp_Dir.hxx>
#include<gp_Dir2d.hxx>
#include<gp_Elips.hxx>
#include<gp_Elips2d.hxx>
#include<gp_EulerSequence.hxx>
#include<gp_GTrsf.hxx>
#include<gp_GTrsf2d.hxx>
#include<gp_Hypr.hxx>
#include<gp_Hypr2d.hxx>
#include<gp_Lin.hxx>
#include<gp_Lin2d.hxx>
#include<gp_Mat.hxx>
#include<gp_Mat2d.hxx>
#include<gp_Parab.hxx>
#include<gp_Parab2d.hxx>
#include<gp_Pln.hxx>
#include<gp_Pnt.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Quaternion.hxx>
#include<gp_QuaternionNLerp.hxx>
#include<gp_QuaternionSLerp.hxx>
#include<gp_Sphere.hxx>
#include<gp_Torus.hxx>
#include<gp_Trsf.hxx>
#include<gp_Trsf2d.hxx>
#include<gp_TrsfForm.hxx>
#include<gp_Vec.hxx>
#include<gp_Vec2d.hxx>
#include<gp_VectorWithNullMagnitude.hxx>
#include<gp_XY.hxx>
#include<gp_XYZ.hxx>

// Needed headers necessary for compilation.

#include<Sketcher_GUI.hxx>
#include<Sketcher.hxx>
%}
