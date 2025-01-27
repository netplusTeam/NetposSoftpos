.class public final Lcom/itextpdf/svg/exceptions/SvgLogMessageConstant;
.super Ljava/lang/Object;
.source "SvgLogMessageConstant.java"


# static fields
.field public static final ARC_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(rx ry rot largearc sweep x y)+ parameters are expected for elliptical arcs. Got: {0}"

.field public static final ATTRIBUTES_NULL:Ljava/lang/String; = "The attributes of this element are null."

.field public static final COORDINATE_VALUE_ABSENT:Ljava/lang/String; = "The coordinate value is empty or null."

.field public static final COULDNOTINSTANTIATE:Ljava/lang/String; = "Could not instantiate Renderer for tag {0}"

.field public static final CUSTOM_ABSTRACT_CSS_CONTEXT_NOT_SUPPORTED:Ljava/lang/String; = "Custom AbstractCssContext implementations are not supported yet"

.field public static final DRAW_NO_DRAW:Ljava/lang/String; = "Can\'t draw current SvgNodeRenderer."

.field public static final ERROR_CLOSING_CSS_STREAM:Ljava/lang/String; = "An error occured when trying to close the InputStream of the default CSS."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_INITIALIZING_DEFAULT_CSS:Ljava/lang/String; = "Error loading the default CSS. Initializing an empty style sheet."

.field public static final FAILED_TO_PARSE_INPUTSTREAM:Ljava/lang/String; = "Failed to parse InputStream."

.field public static final FLOAT_PARSING_NAN:Ljava/lang/String; = "The passed value is not a number."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FONT_NOT_FOUND:Ljava/lang/String; = "The font wasn\'t found."

.field public static final FONT_PROVIDER_CONTAINS_ZERO_FONTS:Ljava/lang/String; = "Font Provider contains zero fonts. At least one font shall be present"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRADIENT_INVALID_GRADIENT_UNITS_LOG:Ljava/lang/String; = "Could not recognize gradient units value {0}"

.field public static final GRADIENT_INVALID_SPREAD_METHOD_LOG:Ljava/lang/String; = "Could not recognize gradient spread method value {0}"

.field public static final INODEROOTISNULL:Ljava/lang/String; = "Input root value is null"

.field public static final INVALID_CLOSEPATH_OPERATOR_USE:Ljava/lang/String; = "The close path operator (Z) may not be used before a move to operation (M)"

.field public static final INVALID_PATH_D_ATTRIBUTE_OPERATORS:Ljava/lang/String; = "Invalid operators found in path data attribute: {0}"

.field public static final INVALID_TRANSFORM_DECLARATION:Ljava/lang/String; = "Transformation declaration is not formed correctly."

.field public static final LOOP:Ljava/lang/String; = "Loop detected"

.field public static final MARKER_HEIGHT_IS_NEGATIVE_VALUE:Ljava/lang/String; = "markerHeight has negative value. Marker will not be rendered."

.field public static final MARKER_HEIGHT_IS_ZERO_VALUE:Ljava/lang/String; = "markerHeight has zero value. Marker will not be rendered."

.field public static final MARKER_WIDTH_IS_NEGATIVE_VALUE:Ljava/lang/String; = "markerWidth has negative value. Marker will not be rendered."

.field public static final MARKER_WIDTH_IS_ZERO_VALUE:Ljava/lang/String; = "markerWidth has zero value. Marker will not be rendered."

.field public static final MISSING_HEIGHT:Ljava/lang/String; = "Top Svg tag has no defined height attribute and viewbox height is not present, so browser default of 150px is used"

.field public static final MISSING_WIDTH:Ljava/lang/String; = "Top Svg tag has no defined width attribute and viewbox width is not present, so browser default of 300px is used"

.field public static final NAMED_OBJECT_NAME_NULL_OR_EMPTY:Ljava/lang/String; = "The name of the named object can\'t be null or empty."

.field public static final NAMED_OBJECT_NULL:Ljava/lang/String; = "A named object can\'t be null."

.field public static final NONINVERTIBLE_TRANSFORMATION_MATRIX_USED_IN_CLIP_PATH:Ljava/lang/String; = "Non-invertible transformation matrix was used in a clipping path context. Clipped elements may show undefined behavior."

.field public static final NOROOT:Ljava/lang/String; = "No root found"

.field public static final PARAMETER_CANNOT_BE_NULL:Ljava/lang/String; = "Parameters for this method cannot be null."

.field public static final PATH_WRONG_NUMBER_OF_ARGUMENTS:Ljava/lang/String; = "Path operator {0} has received {1} arguments, but expects between {2} and {3} arguments. \n Resulting SVG will be incorrect."

.field public static final PATTERN_INVALID_PATTERN_CONTENT_UNITS_LOG:Ljava/lang/String; = "Could not recognize patternContentUnits value {0}"

.field public static final PATTERN_INVALID_PATTERN_UNITS_LOG:Ljava/lang/String; = "Could not recognize patternUnits value {0}"

.field public static final PATTERN_WIDTH_OR_HEIGHT_IS_NEGATIVE:Ljava/lang/String; = "Pattern width or height is negative value. This pattern will not be rendered."

.field public static final PATTERN_WIDTH_OR_HEIGHT_IS_ZERO:Ljava/lang/String; = "Pattern width or height is zero. This pattern will not be rendered."

.field public static final POINTS_ATTRIBUTE_INVALID_LIST:Ljava/lang/String; = "Points attribute {0} on polyline tag does not contain a valid set of points"

.field public static final ROOT_SVG_NO_BBOX:Ljava/lang/String; = "The root svg tag needs to have a bounding box defined."

.field public static final TAGPARAMETERNULL:Ljava/lang/String; = "Tag parameter must not be null"

.field public static final TRANSFORM_EMPTY:Ljava/lang/String; = "The transformation value is empty."

.field public static final TRANSFORM_INCORRECT_NUMBER_OF_VALUES:Ljava/lang/String; = "Transformation doesn\'t contain the right number of values."

.field public static final TRANSFORM_INCORRECT_VALUE_TYPE:Ljava/lang/String; = "The transformation value is not a number."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSFORM_NULL:Ljava/lang/String; = "The transformation value is null."

.field public static final UNABLE_TO_GET_INVERSE_MATRIX_DUE_TO_ZERO_DETERMINANT:Ljava/lang/String; = "Unable to get inverse transformation matrix and thus calculate a viewport for the element because some of the transformation matrices, which are written to document, have a determinant of zero value. A bbox of zero values will be used as a viewport for this element."

.field public static final UNABLE_TO_RETRIEVE_FONT:Ljava/lang/String; = "Unable to retrieve font:\n {0}"

.field public static final UNABLE_TO_RETRIEVE_STREAM_WITH_GIVEN_BASE_URI:Ljava/lang/String; = "Unable to retrieve stream with given base URI ({0}) and source path ({1})"

.field public static final UNKNOWN_TRANSFORMATION_TYPE:Ljava/lang/String; = "Unsupported type of transformation."

.field public static final UNMAPPEDTAG:Ljava/lang/String; = "Could not find implementation for tag {0}"

.field public static final VIEWBOX_VALUE_MUST_BE_FOUR_NUMBERS:Ljava/lang/String; = "The viewBox value must be 4 numbers. This viewBox=\"{0}\" will not be processed."

.field public static final VIEWBOX_WIDTH_AND_HEIGHT_CANNOT_BE_NEGATIVE:Ljava/lang/String; = "The viewBox width and height cannot be negative. This viewBox=\"{0}\" will not be processed."

.field public static final VIEWBOX_WIDTH_OR_HEIGHT_IS_ZERO:Ljava/lang/String; = "The viewBox width or height is zero. The element with this viewBox will not be rendered."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method
