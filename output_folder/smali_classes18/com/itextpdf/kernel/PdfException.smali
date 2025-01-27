.class public Lcom/itextpdf/kernel/PdfException;
.super Ljava/lang/RuntimeException;
.source "PdfException.java"


# static fields
.field public static final AnnotationShallHaveReferenceToPage:Ljava/lang/String; = "Annotation shall have reference to page."

.field public static final AppendModeRequiresADocumentWithoutErrorsEvenIfRecoveryWasPossible:Ljava/lang/String; = "Append mode requires a document without errors, even if recovery is possible."

.field public static final AuthenticatedAttributeIsMissingTheDigest:Ljava/lang/String; = "Authenticated attribute is missing the digest."

.field public static final AvailableSpaceIsNotEnoughForSignature:Ljava/lang/String; = "Available space is not enough for signature."

.field public static final BadCertificateAndKey:Ljava/lang/String; = "Bad public key certificate and/or private key."

.field public static final BadUserPassword:Ljava/lang/String; = "Bad user password. Password is not provided or wrong password provided. Correct password should be passed to PdfReader constructor with properties. See ReaderProperties#setPassword() method."

.field public static final CannotAddCellToCompletedLargeTable:Ljava/lang/String; = "The large table was completed. It\'s prohibited to use it anymore. Created different Table instance instead."

.field public static final CannotAddKidToTheFlushedElement:Ljava/lang/String; = "Cannot add kid to the flushed element."

.field public static final CannotAddNonDictionaryExtGStateToResources1:Ljava/lang/String; = "Cannot add graphic state to resources. The PdfObject type is {0}, but should be PdfDictionary."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CannotAddNonDictionaryPatternToResources1:Ljava/lang/String; = "Cannot add pattern to resources. The PdfObject type is {0}, but should be PdfDictionary or PdfStream."

.field public static final CannotAddNonDictionaryPropertiesToResources1:Ljava/lang/String; = "Cannot add properties to resources. The PdfObject type is {0}, but should be PdfDictionary."

.field public static final CannotAddNonDictionaryShadingToResources1:Ljava/lang/String; = "Cannot add shading to resources. The PdfObject type is {0}, but should be PdfDictionary or PdfStream."

.field public static final CannotAddNonStreamFormToResources1:Ljava/lang/String; = "Cannot add form to resources. The PdfObject type is {0}, but should be PdfStream."

.field public static final CannotAddNonStreamImageToResources1:Ljava/lang/String; = "Cannot add image to resources. The PdfObject type is {0}, but should be PdfStream."

.field public static final CannotBeEmbeddedDueToLicensingRestrictions:Ljava/lang/String; = "{0} cannot be embedded due to licensing restrictions."

.field public static final CannotCloseDocument:Ljava/lang/String; = "Cannot close document."

.field public static final CannotCloseDocumentWithAlreadyFlushedPdfCatalog:Ljava/lang/String; = "Cannot close document with already flushed PDF Catalog."

.field public static final CannotConvertPdfArrayToBooleanArray:Ljava/lang/String; = "Cannot convert PdfArray to an array of booleans"

.field public static final CannotConvertPdfArrayToDoubleArray:Ljava/lang/String; = "Cannot convert PdfArray to an array of doubles."

.field public static final CannotConvertPdfArrayToFloatArray:Ljava/lang/String; = "Cannot convert PdfArray to an array of floats."

.field public static final CannotConvertPdfArrayToIntArray:Ljava/lang/String; = "Cannot convert PdfArray to an array of integers."

.field public static final CannotConvertPdfArrayToLongArray:Ljava/lang/String; = "Cannot convert PdfArray to an array of longs."

.field public static final CannotConvertPdfArrayToRectanle:Ljava/lang/String; = "Cannot convert PdfArray to Rectangle."

.field public static final CannotCopyFlushedObject:Ljava/lang/String; = "Cannot copy flushed object."

.field public static final CannotCopyFlushedTag:Ljava/lang/String; = "Cannot copy flushed tag."

.field public static final CannotCopyIndirectObjectFromTheDocumentThatIsBeingWritten:Ljava/lang/String; = "Cannot copy indirect object from the document that is being written."

.field public static final CannotCopyObjectContent:Ljava/lang/String; = "Cannot copy object content."

.field public static final CannotCopyToDocumentOpenedInReadingMode:Ljava/lang/String; = "Cannot copy to document opened in reading mode."

.field public static final CannotCreateFontFromNullFontDictionary:Ljava/lang/String; = "Cannot create font from null pdf dictionary."

.field public static final CannotCreateLayoutImageByWmfImage:Ljava/lang/String; = "Cannot create layout image by WmfImage instance. First convert the image into FormXObject and then use the corresponding layout image constructor."

.field public static final CannotCreatePdfImageXObjectByWmfImage:Ljava/lang/String; = "Cannot create PdfImageXObject instance by WmfImage. Use PdfFormXObject constructor instead."

.field public static final CannotCreatePdfStreamByInputStreamWithoutPdfDocument:Ljava/lang/String; = "Cannot create pdfstream by InputStream without PdfDocument."

.field public static final CannotCreateType0FontWithTrueTypeFontProgramWithoutEmbedding:Ljava/lang/String; = "Cannot create Type0 font with true type font program without embedding it."

.field public static final CannotDecodePkcs7SigneddataObject:Ljava/lang/String; = "Cannot decode PKCS#7 SignedData object."

.field public static final CannotDrawElementsOnAlreadyFlushedPages:Ljava/lang/String; = "Cannot draw elements on already flushed pages."

.field public static final CannotEmbedStandardFont:Ljava/lang/String; = "Standard fonts cannot be embedded."

.field public static final CannotEmbedType0FontWithCidFontProgram:Ljava/lang/String; = "Cannot embed Type0 font with CID font program based on non-generic predefined CMap."

.field public static final CannotFindImageDataOrEI:Ljava/lang/String; = "Cannot find image data or EI."

.field public static final CannotFindSigningCertificateWithSerial1:Ljava/lang/String; = "Cannot find signing certificate with serial {0}."

.field public static final CannotFlushDocumentRootTagBeforeDocumentIsClosed:Ljava/lang/String; = "Cannot flush document root tag before document is closed."

.field public static final CannotFlushObject:Ljava/lang/String; = "Cannot flush object."

.field public static final CannotGetContentBytes:Ljava/lang/String; = "Cannot get content bytes."

.field public static final CannotGetPdfStreamBytes:Ljava/lang/String; = "Cannot get PdfStream bytes."

.field public static final CannotMoveFlushedTag:Ljava/lang/String; = "Cannot move flushed tag"

.field public static final CannotMovePagesInPartlyFlushedDocument:Ljava/lang/String; = "Cannot move pages in partly flushed document. Page number {0} is already flushed."

.field public static final CannotMoveToFlushedKid:Ljava/lang/String; = "Cannot move to flushed kid."

.field public static final CannotMoveToMarkedContentReference:Ljava/lang/String; = "Cannot move to marked content reference."

.field public static final CannotMoveToParentCurrentElementIsRoot:Ljava/lang/String; = "Cannot move to parent current element is root."

.field public static final CannotOpenDocument:Ljava/lang/String; = "Cannot open document."

.field public static final CannotOperateWithFlushedPdfStream:Ljava/lang/String; = "Cannot operate with the flushed PdfStream."

.field public static final CannotParseContentStream:Ljava/lang/String; = "Cannot parse content stream."

.field public static final CannotReadAStreamInOrderToAppendNewBytes:Ljava/lang/String; = "Cannot read a stream in order to append new bytes."

.field public static final CannotReadPdfObject:Ljava/lang/String; = "Cannot read PdfObject."

.field public static final CannotRecogniseDocumentFontWithEncoding:Ljava/lang/String; = "Cannot recognise document font {0} with {1} encoding"

.field public static final CannotRelocateRootTag:Ljava/lang/String; = "Cannot relocate root tag."

.field public static final CannotRelocateTagWhichIsAlreadyFlushed:Ljava/lang/String; = "Cannot relocate tag which is already flushed."

.field public static final CannotRelocateTagWhichParentIsAlreadyFlushed:Ljava/lang/String; = "Cannot relocate tag which parent is already flushed."

.field public static final CannotRemoveDocumentRootTag:Ljava/lang/String; = "Cannot remove document root tag."

.field public static final CannotRemoveMarkedContentReferenceBecauseItsPageWasAlreadyFlushed:Ljava/lang/String; = "Cannot remove marked content reference, because its page has been already flushed."

.field public static final CannotRemoveTagBecauseItsParentIsFlushed:Ljava/lang/String; = "Cannot remove tag, because its parent is flushed."

.field public static final CannotRetrieveMediaBoxAttribute:Ljava/lang/String; = "Invalid PDF. There is no media box attribute for page or its parents."

.field public static final CannotSetDataToPdfStreamWhichWasCreatedByInputStream:Ljava/lang/String; = "Cannot set data to PdfStream which was created by InputStream."

.field public static final CannotSetDataToPdfstreamWhichWasCreatedByInputStream:Ljava/lang/String; = "Cannot set data to PdfStream which was created by InputStream."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CannotSetEncryptedPayloadToDocumentOpenedInReadingMode:Ljava/lang/String; = "Cannot set encrypted payload to a document opened in read only mode."

.field public static final CannotSetEncryptedPayloadToEncryptedDocument:Ljava/lang/String; = "Cannot set encrypted payload to an encrypted document."

.field public static final CannotSplitDocumentThatIsBeingWritten:Ljava/lang/String; = "Cannot split document that is being written."

.field public static final CannotWriteObjectAfterItWasReleased:Ljava/lang/String; = "Cannot write object after it was released. In normal situation the object must be read once again before being written."

.field public static final CannotWriteToPdfStream:Ljava/lang/String; = "Cannot write to PdfStream."

.field public static final CertificateIsNotProvidedDocumentIsEncryptedWithPublicKeyCertificate:Ljava/lang/String; = "Certificate is not provided. Document is encrypted with public key certificate, it should be passed to PdfReader constructor with properties. See ReaderProperties#setPublicKeySecurityParams() method."

.field public static final CertificationSignatureCreationFailedDocShallNotContainSigs:Ljava/lang/String; = "Certification signature creation failed. Document shall not contain any certification or approval signatures before signing with certification signature."

.field public static final CfNotFoundEncryption:Ljava/lang/String; = "/CF not found (encryption)"

.field public static final CodabarMustHaveAtLeastStartAndStopCharacter:Ljava/lang/String; = "Codabar must have at least start and stop character."

.field public static final CodabarMustHaveOneAbcdAsStartStopCharacter:Ljava/lang/String; = "Codabar must have one of \'ABCD\' as start/stop character."

.field public static final ColorSpaceNotFound:Ljava/lang/String; = "ColorSpace not found."

.field public static final ContentStreamMustNotInvokeOperatorsThatSpecifyColorsOrOtherColorRelatedParameters:Ljava/lang/String; = "Content stream must not invoke operators that specify colors or other color related parameters in the graphics state."

.field public static final DataHandlerCounterHasBeenDisabled:Ljava/lang/String; = "Data handler counter has been disabled"

.field public static final DecodeParameterType1IsNotSupported:Ljava/lang/String; = "Decode parameter type {0} is not supported."

.field public static final DefaultAppearanceNotFound:Ljava/lang/String; = "DefaultAppearance is required but not found"

.field public static final DefaultcryptfilterNotFoundEncryption:Ljava/lang/String; = "/DefaultCryptFilter not found (encryption)."

.field public static final DictionaryDoesntHave1FontData:Ljava/lang/String; = "Dictionary doesn\'t have {0} font data."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DictionaryDoesntHaveSupportedFontData:Ljava/lang/String; = "Dictionary doesn\'t have supported font data."

.field public static final DictionaryKey1IsNotAName:Ljava/lang/String; = "Dictionary key {0} is not a name."

.field public static final DocumentAlreadyPreClosed:Ljava/lang/String; = "Document has been already pre closed."

.field public static final DocumentClosedItIsImpossibleToExecuteAction:Ljava/lang/String; = "Document was closed. It is impossible to execute action."

.field public static final DocumentDoesntContainStructTreeRoot:Ljava/lang/String; = "Document doesn\'t contain StructTreeRoot."

.field public static final DocumentForCopyToCannotBeNull:Ljava/lang/String; = "Document for copyTo cannot be null."

.field public static final DocumentHasNoPages:Ljava/lang/String; = "Document has no pages."

.field public static final DocumentHasNoPdfCatalogObject:Ljava/lang/String; = "Document has no PDF Catalog object."

.field public static final DocumentHasNotBeenReadYet:Ljava/lang/String; = "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

.field public static final DocumentMustBePreClosed:Ljava/lang/String; = "Document must be preClosed."

.field public static final DuringDecompressionMultipleStreamsInSumOccupiedMoreMemoryThanAllowed:Ljava/lang/String; = "During decompression multiple streams in sum occupied more memory than allowed. Please either check your pdf or increase the allowed single decompressed pdf stream maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

.field public static final DuringDecompressionSingleStreamOccupiedMoreMemoryThanAllowed:Ljava/lang/String; = "During decompression a single stream occupied more memory than allowed. Please either check your pdf or increase the allowed multiple decompressed pdf streams maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

.field public static final DuringDecompressionSingleStreamOccupiedMoreThanMaxIntegerValue:Ljava/lang/String; = "During decompression a single stream occupied more than a maximum integer value. Please check your pdf."

.field public static final EncryptedPayloadFileSpecDoesntHaveEncryptedPayloadDictionary:Ljava/lang/String; = "Encrypted payload file spec shall have encrypted payload dictionary."

.field public static final EncryptedPayloadFileSpecShallBeIndirect:Ljava/lang/String; = "Encrypted payload file spec shall be indirect."

.field public static final EncryptedPayloadFileSpecShallHaveEFDictionary:Ljava/lang/String; = "Encrypted payload file spec shall have \'EF\' key. The value of such key shall be a dictionary that contains embedded file stream."

.field public static final EncryptedPayloadFileSpecShallHaveTypeEqualToFilespec:Ljava/lang/String; = "Encrypted payload file spec shall have \'Type\' key. The value of such key shall be \'Filespec\'."

.field public static final EncryptedPayloadShallHaveSubtype:Ljava/lang/String; = "Encrypted payload shall have \'Subtype\' field specifying crypto filter"

.field public static final EncryptedPayloadShallHaveTypeEqualsToEncryptedPayloadIfPresent:Ljava/lang/String; = "Encrypted payload dictionary shall have field \'Type\' equal to \'EncryptedPayload\' if present"

.field public static final EndOfContentStreamReachedBeforeEndOfImageData:Ljava/lang/String; = "End of content stream reached before end of image data."

.field public static final ErrorWhileReadingObjectStream:Ljava/lang/String; = "Error while reading Object Stream."

.field public static final FLUSHED_PAGE_CANNOT_BE_REMOVED:Ljava/lang/String; = "Flushed page cannot be removed from a document which is tagged or has an AcroForm"

.field public static final FailedToGetTsaResponseFrom1:Ljava/lang/String; = "Failed to get TSA response from {0}."

.field public static final FieldAlreadySigned:Ljava/lang/String; = "Field has been already signed."

.field public static final FieldFlatteningIsNotSupportedInAppendMode:Ljava/lang/String; = "Field flattening is not supported in append mode."

.field public static final FieldNamesCannotContainADot:Ljava/lang/String; = "Field names cannot contain a dot."

.field public static final FieldTypeIsNotASignatureFieldType:Ljava/lang/String; = "Field type is not a signature field type."

.field public static final FilePosition1CrossReferenceEntryInThisXrefSubsection:Ljava/lang/String; = "file position {0} cross reference entry in this xref subsection."

.field public static final Filter1IsNotSupported:Ljava/lang/String; = "Filter {0} is not supported."

.field public static final FilterCcittfaxdecodeIsOnlySupportedForImages:Ljava/lang/String; = "Filter CCITTFaxDecode is only supported for images"

.field public static final FilterIsNotANameOrArray:Ljava/lang/String; = "filter is not a name or array."

.field public static final FlushedPageCannotBeAddedOrInserted:Ljava/lang/String; = "Flushed page cannot be added or inserted."

.field public static final FlushingHelperFLushingModeIsNotForDocReadingMode:Ljava/lang/String; = "Flushing writes the object to the output stream and releases it from memory. It is only possible for documents that have a PdfWriter associated with them. Use PageFlushingHelper#releaseDeep method instead."

.field public static final FontAndSizeMustBeSetBeforeWritingAnyText:Ljava/lang/String; = "Font and size must be set before writing any text."

.field public static final FontEmbeddingIssue:Ljava/lang/String; = "Font embedding issue."

.field public static final FontProviderNotSetFontFamilyNotResolved:Ljava/lang/String; = "FontProvider and FontSet are empty. Cannot resolve font family name (see ElementPropertyContainer#setFontFamily) without initialized FontProvider (see RootElement#setFontProvider)."

.field public static final FontSizeIsTooSmall:Ljava/lang/String; = "Font size is too small."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FormXObjectMustHaveBbox:Ljava/lang/String; = "Form XObject must have BBox."

.field public static final FunctionIsNotCompatibleWitColorSpace:Ljava/lang/String; = "Function is not compatible with ColorSpace."

.field public static final GivenAccessibleElementIsNotConnectedToAnyTag:Ljava/lang/String; = "Given accessible element is not connected to any tag."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IllegalCharacterInAscii85decode:Ljava/lang/String; = "Illegal character in ASCII85Decode."

.field public static final IllegalCharacterInAsciihexdecode:Ljava/lang/String; = "illegal character in ASCIIHexDecode."

.field public static final IllegalCharacterInCodabarBarcode:Ljava/lang/String; = "Illegal character in Codabar Barcode."

.field public static final IllegalLengthValue:Ljava/lang/String; = "Illegal length value."

.field public static final IllegalRValue:Ljava/lang/String; = "Illegal R value."

.field public static final IllegalVValue:Ljava/lang/String; = "Illegal V value."

.field public static final InAPageLabelThePageNumbersMustBeGreaterOrEqualTo1:Ljava/lang/String; = "In a page label the page numbers must be greater or equal to 1."

.field public static final InCodabarStartStopCharactersAreOnlyAllowedAtTheExtremes:Ljava/lang/String; = "In Codabar, start/stop characters are only allowed at the extremes."

.field public static final IncorrectNumberOfComponents:Ljava/lang/String; = "Incorrect number of components."

.field public static final InvalidCodewordSize:Ljava/lang/String; = "Invalid codeword size."

.field public static final InvalidCrossReferenceEntryInThisXrefSubsection:Ljava/lang/String; = "Invalid cross reference entry in this xref subsection."

.field public static final InvalidHttpResponse1:Ljava/lang/String; = "Invalid http response {0}."

.field public static final InvalidIndirectReference1:Ljava/lang/String; = "Invalid indirect reference {0}."

.field public static final InvalidMediaBoxValue:Ljava/lang/String; = "Tne media box object has incorrect values."

.field public static final InvalidOffsetForObject1:Ljava/lang/String; = "Invalid offset for object {0}."

.field public static final InvalidPageStructure1:Ljava/lang/String; = "Invalid page structure {0}."

.field public static final InvalidPageStructurePagesPagesMustBePdfDictionary:Ljava/lang/String; = "Invalid page structure. /Pages must be PdfDictionary."

.field public static final InvalidRangeArray:Ljava/lang/String; = "Invalid range array."

.field public static final InvalidTsa1ResponseCode2:Ljava/lang/String; = "Invalid TSA {0} response code {1}."

.field public static final InvalidXrefStream:Ljava/lang/String; = "Invalid xref stream."

.field public static final InvalidXrefTable:Ljava/lang/String; = "Invalid xref table."

.field public static final IoException:Ljava/lang/String; = "I/O exception."

.field public static final IoExceptionWhileCreatingFont:Ljava/lang/String; = "I/O exception while creating Font"

.field public static final LzwDecoderException:Ljava/lang/String; = "LZW decoder exception."

.field public static final LzwFlavourNotSupported:Ljava/lang/String; = "LZW flavour not supported."

.field public static final MacroSegmentIdMustBeGtOrEqZero:Ljava/lang/String; = "macroSegmentId must be >= 0"

.field public static final MacroSegmentIdMustBeGtZero:Ljava/lang/String; = "macroSegmentId must be > 0"

.field public static final MacroSegmentIdMustBeLtMacroSegmentCount:Ljava/lang/String; = "macroSegmentId must be < macroSemgentCount"

.field public static final MissingRequiredFieldInFontDictionary:Ljava/lang/String; = "Missing required field {0} in font dictionary."

.field public static final MustBeATaggedDocument:Ljava/lang/String; = "Must be a tagged document."

.field public static final NoCompatibleEncryptionFound:Ljava/lang/String; = "No compatible encryption found."

.field public static final NoCryptoDictionaryDefined:Ljava/lang/String; = "No crypto dictionary defined."

.field public static final NoGlyphsDefinedForType3Font:Ljava/lang/String; = "No glyphs defined for type3 font."

.field public static final NoKidWithSuchRole:Ljava/lang/String; = "No kid with such role."

.field public static final NoMaxLenPresent:Ljava/lang/String; = "No /MaxLen has been set even though the Comb flag has been set."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NoValidEncryptionMode:Ljava/lang/String; = "No valid encryption mode."

.field public static final NoninvertibleMatrixCannotBeProcessed:Ljava/lang/String; = "A noninvertible matrix has been parsed. The behaviour is unpredictable."

.field public static final NotAPlaceableWindowsMetafile:Ljava/lang/String; = "Not a placeable windows metafile."

.field public static final NotAValidPkcs7ObjectNotASequence:Ljava/lang/String; = "Not a valid PKCS#7 object - not a sequence"

.field public static final NotAValidPkcs7ObjectNotSignedData:Ljava/lang/String; = "Not a valid PKCS#7 object - not signed data."

.field public static final NotAWmfImage:Ljava/lang/String; = "Not a WMF image."

.field public static final NumberOfBooleansInTheArrayDoesntCorrespondWithTheNumberOfFields:Ljava/lang/String; = "The number of booleans in the array doesn\'t correspond with the number of fields."

.field public static final NumberOfEntriesInThisXrefSubsectionNotFound:Ljava/lang/String; = "Number of entries in this xref subsection not found."

.field public static final ObjectMustBeIndirectToWorkWithThisWrapper:Ljava/lang/String; = "Object must be indirect to work with this wrapper."

.field public static final ObjectNumberOfTheFirstObjectInThisXrefSubsectionNotFound:Ljava/lang/String; = "Object number of the first object in this xref subsection not found."

.field public static final OnlyBmpCanBeWrappedInWmf:Ljava/lang/String; = "Only BMP can be wrapped in WMF."

.field public static final OnlyIdentityCMapsSupportsWithTrueType:Ljava/lang/String; = "Only Identity CMaps supports with truetype"

.field public static final OperatorEINotFoundAfterEndOfImageData:Ljava/lang/String; = "Operator EI not found after the end of image data."

.field public static final Page1CannotBeAddedToDocument2BecauseItBelongsToDocument3:Ljava/lang/String; = "Page {0} cannot be added to document {1}, because it belongs to document {2}."

.field public static final PageAlreadyFlushed:Ljava/lang/String; = "The page has been already flushed."

.field public static final PageAlreadyFlushedUseAddFieldAppearanceToPageMethodBeforePageFlushing:Ljava/lang/String; = "The page has been already flushed. Use PdfAcroForm#addFieldAppearanceToPage() method before page flushing."

.field public static final PageIsNotSetForThePdfTagStructure:Ljava/lang/String; = "Page is not set for the pdf tag structure."

.field public static final PdfDecryption:Ljava/lang/String; = "Exception occurred with PDF document decryption. One of the possible reasons is wrong password or wrong public key certificate and private key."

.field public static final PdfDocumentMustBeOpenedInStampingMode:Ljava/lang/String; = "PdfDocument must be opened in stamping mode."

.field public static final PdfEncodings:Ljava/lang/String; = "PdfEncodings exception."

.field public static final PdfEncryption:Ljava/lang/String; = "PdfEncryption exception."

.field public static final PdfFormXobjectHasInvalidBbox:Ljava/lang/String; = "PdfFormXObject has invalid BBox."

.field public static final PdfIndirectObjectBelongsToOtherPdfDocument:Ljava/lang/String; = "Pdf indirect object belongs to other PDF document. Copy object to current pdf document."

.field public static final PdfObjectStreamReachMaxSize:Ljava/lang/String; = "PdfObjectStream reach max size."

.field public static final PdfPagesTreeCouldBeGeneratedOnlyOnce:Ljava/lang/String; = "PdfPages tree could be generated only once."

.field public static final PdfReaderHasBeenAlreadyUtilized:Ljava/lang/String; = "Given PdfReader instance has already been utilized. The PdfReader cannot be reused, please create a new instance."

.field public static final PdfStartxrefIsNotFollowedByANumber:Ljava/lang/String; = "PDF startxref is not followed by a number."

.field public static final PdfStartxrefNotFound:Ljava/lang/String; = "PDF startxref not found."

.field public static final PdfVersionNotValid:Ljava/lang/String; = "PDF version is not valid."

.field public static final PngFilterUnknown:Ljava/lang/String; = "PNG filter unknown."

.field public static final PrintScalingEnforceEntryInvalid:Ljava/lang/String; = "/PrintScaling shall may appear in the Enforce array only if the corresponding entry in the viewer preferences dictionary specifies a valid value other than AppDefault"

.field public static final QuadPointArrayLengthIsNotAMultipleOfEight:Ljava/lang/String; = "The QuadPoint Array length is not a multiple of 8."

.field public static final RefArrayItemsInStructureElementDictionaryShallBeIndirectObjects:Ljava/lang/String; = "Ref array items in structure element dictionary shall be indirect objects."

.field public static final RequestedPageNumberIsOutOfBounds:Ljava/lang/String; = "Requested page number {0} is out of bounds."

.field public static final ResourcesCannotBeNull:Ljava/lang/String; = "Resources cannot be null."

.field public static final ResourcesDoNotContainExtgstateEntryUnableToProcessOperator1:Ljava/lang/String; = "Resources do not contain ExtGState entry. Unable to process operator {0}."

.field public static final RoleInNamespaceIsNotMappedToAnyStandardRole:Ljava/lang/String; = "Role \"{0}\" in namespace {1} is not mapped to any standard role."

.field public static final RoleIsNotMappedToAnyStandardRole:Ljava/lang/String; = "Role \"{0}\" is not mapped to any standard role."

.field public static final ShadingTypeNotFound:Ljava/lang/String; = "Shading type not found."

.field public static final SignatureWithName1IsNotTheLastItDoesntCoverWholeDocument:Ljava/lang/String; = "Signature with name {0} is not the last. It doesn\'t cover the whole document."

.field public static final StdcfNotFoundEncryption:Ljava/lang/String; = "/StdCF not found (encryption)"

.field public static final StructParentIndexNotFoundInTaggedObject:Ljava/lang/String; = "StructParent index not found in tagged object."

.field public static final StructureElementDictionaryShallBeAnIndirectObjectInOrderToHaveChildren:Ljava/lang/String; = "Structure element dictionary shall be an indirect object in order to have children."

.field public static final StructureElementInStructureDestinationShallBeAnIndirectObject:Ljava/lang/String; = "Structure element referenced by a structure destination shall be an indirect object."

.field public static final StructureElementShallContainParentObject:Ljava/lang/String; = "StructureElement shall contain parent object."

.field public static final TagCannotBeMovedToTheAnotherDocumentsTagStructure:Ljava/lang/String; = "Tag cannot be moved to the another document\'s tag structure."

.field public static final TagFromTheExistingTagStructureIsFlushedCannotAddCopiedPageTags:Ljava/lang/String; = "Tag from the existing tag structure is flushed. Cannot add copied page tags."

.field public static final TagStructureCopyingFailedItMightBeCorruptedInOneOfTheDocuments:Ljava/lang/String; = "Tag structure copying failed: it might be corrupted in one of the documents."

.field public static final TagStructureFlushingFailedItMightBeCorrupted:Ljava/lang/String; = "Tag structure flushing failed: it might be corrupted."

.field public static final TagTreePointerIsInInvalidStateItPointsAtFlushedElementUseMoveToRoot:Ljava/lang/String; = "TagTreePointer is in invalid state: it points at flushed element. Use TagTreePointer#moveToRoot."

.field public static final TagTreePointerIsInInvalidStateItPointsAtRemovedElementUseMoveToRoot:Ljava/lang/String; = "TagTreePointer is in invalid state: it points at removed element use TagTreePointer#moveToRoot."

.field public static final TextCannotBeNull:Ljava/lang/String; = "Text cannot be null."

.field public static final TextIsTooBig:Ljava/lang/String; = "Text is too big."

.field public static final TextMustBeEven:Ljava/lang/String; = "The text length must be even."

.field public static final ThereAreIllegalCharactersForBarcode128In1:Ljava/lang/String; = "There are illegal characters for barcode 128 in {0}."

.field public static final ThereIsNoAssociatePdfWriterForMakingIndirects:Ljava/lang/String; = "There is no associate PdfWriter for making indirects."

.field public static final ThereIsNoFieldInTheDocumentWithSuchName1:Ljava/lang/String; = "There is no field in the document with such name: {0}."

.field public static final ThisInstanceOfPdfSignerAlreadyClosed:Ljava/lang/String; = "This instance of PdfSigner has been already closed."

.field public static final ThisPkcs7ObjectHasMultipleSignerinfosOnlyOneIsSupportedAtThisTime:Ljava/lang/String; = "This PKCS#7 object has multiple SignerInfos. Only one is supported at this time."

.field public static final ToFlushThisWrapperUnderlyingObjectMustBeAddedToDocument:Ljava/lang/String; = "To manually flush this wrapper, you have to ensure that the object behind this wrapper is added to the document, i.e. it has an indirect reference."

.field public static final TrailerNotFound:Ljava/lang/String; = "Trailer not found."

.field public static final TrailerPrevEntryPointsToItsOwnCrossReferenceSection:Ljava/lang/String; = "Trailer prev entry points to its own cross reference section."

.field public static final Tsa1FailedToReturnTimeStampToken2:Ljava/lang/String; = "TSA {0} failed to return time stamp token: {1}."

.field public static final TwoBarcodeMustBeExternally:Ljava/lang/String; = "The two barcodes must be composed externally."

.field public static final UnbalancedBeginEndMarkedContentOperators:Ljava/lang/String; = "Unbalanced begin/end marked content operators."

.field public static final UnbalancedLayerOperators:Ljava/lang/String; = "Unbalanced layer operators."

.field public static final UnbalancedSaveRestoreStateOperators:Ljava/lang/String; = "Unbalanced save restore state operators."

.field public static final UnexpectedCharacter1FoundAfterIDInInlineImage:Ljava/lang/String; = "Unexpected character {0} found after ID in inline image."

.field public static final UnexpectedCloseBracket:Ljava/lang/String; = "Unexpected close bracket."

.field public static final UnexpectedColorSpace1:Ljava/lang/String; = "Unexpected ColorSpace: {0}."

.field public static final UnexpectedEndOfFile:Ljava/lang/String; = "Unexpected end of file."

.field public static final UnexpectedGtGt:Ljava/lang/String; = "unexpected >>."

.field public static final UnexpectedShadingType:Ljava/lang/String; = "Unexpected shading type."

.field public static final UnknownEncryptionTypeREq1:Ljava/lang/String; = "Unknown encryption type R == {0}."

.field public static final UnknownEncryptionTypeVEq1:Ljava/lang/String; = "Unknown encryption type V == {0}."

.field public static final UnknownHashAlgorithm1:Ljava/lang/String; = "Unknown hash algorithm: {0}."

.field public static final UnknownKeyAlgorithm1:Ljava/lang/String; = "Unknown key algorithm: {0}."

.field public static final UnknownPdfException:Ljava/lang/String; = "Unknown PdfException."

.field public static final UnsupportedDefaultColorSpaceName1:Ljava/lang/String; = "Unsupported default color space name. Was {0}, but should be DefaultCMYK, DefaultGray or DefaultRGB"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UnsupportedFontEmbeddingStrategy:Ljava/lang/String; = "Unsupported font embedding strategy."

.field public static final UnsupportedXObjectType:Ljava/lang/String; = "Unsupported XObject type."

.field public static final VerificationAlreadyOutput:Ljava/lang/String; = "Verification already output."

.field public static final WRONGMEDIABOXSIZETOOFEWARGUMENTS:Ljava/lang/String; = "Wrong media box size: {0}. Need at least 4 arguments"

.field public static final WhenAddingObjectReferenceToTheTagTreeItMustBeConnectedToNotFlushedObject:Ljava/lang/String; = "When adding object reference to the tag tree, it must be connected to not flushed object."

.field public static final WhitePointIsIncorrectlySpecified:Ljava/lang/String; = "White point is incorrectly specified."

.field public static final WmfImageException:Ljava/lang/String; = "WMF image exception."

.field public static final WrongFormFieldAddAnnotationToTheField:Ljava/lang/String; = "Wrong form field. Add annotation to the field."

.field public static final WrongMediaBoxSize1:Ljava/lang/String; = "Wrong media box size: {0}."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XrefSubsectionNotFound:Ljava/lang/String; = "xref subsection not found."

.field public static final YouHaveToDefineABooleanArrayForThisCollectionSortDictionary:Ljava/lang/String; = "You have to define a boolean array for this collection sort dictionary."

.field public static final YouMustSetAValueBeforeAddingAPrefix:Ljava/lang/String; = "You must set a value before adding a prefix."

.field public static final YouNeedASingleBooleanForThisCollectionSortDictionary:Ljava/lang/String; = "You need a single boolean for this collection sort dictionary."

.field public static final _1IsAnUnknownGraphicsStateDictionary:Ljava/lang/String; = "{0} is an unknown graphics state dictionary."

.field public static final _1IsNotAValidPlaceableWindowsMetafile:Ljava/lang/String; = "{0} is not a valid placeable windows metafile."

.field public static final _1IsNotAnAcceptableValueForTheField2:Ljava/lang/String; = "{0} is not an acceptable value for the field {1}."

.field private static final serialVersionUID:J = 0x3c5a27c32818b543L


# instance fields
.field private messageParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 344
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 363
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .line 364
    iput-object p2, p0, Lcom/itextpdf/kernel/PdfException;->object:Ljava/lang/Object;

    .line 365
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    iput-object p3, p0, Lcom/itextpdf/kernel/PdfException;->object:Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 353
    const-string v0, "Unknown PdfException."

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/itextpdf/kernel/PdfException;->messageParams:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/PdfException;->getMessageParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 392
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageParams()[Ljava/lang/Object;
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/itextpdf/kernel/PdfException;->messageParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 416
    .local v0, "parameters":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/PdfException;->messageParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/itextpdf/kernel/PdfException;->messageParams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public varargs setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;
    .locals 1
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/PdfException;->messageParams:Ljava/util/List;

    .line 406
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 407
    return-object p0
.end method
