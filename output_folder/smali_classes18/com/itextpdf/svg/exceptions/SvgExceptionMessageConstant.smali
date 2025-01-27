.class public Lcom/itextpdf/svg/exceptions/SvgExceptionMessageConstant;
.super Ljava/lang/Object;
.source "SvgExceptionMessageConstant.java"


# static fields
.field public static final COORDINATE_ARRAY_LENGTH_MUST_BY_DIVISIBLE_BY_CURRENT_COORDINATES_ARRAY_LENGTH:Ljava/lang/String; = "Array of current coordinates must have length that is divisible by the length of the array with current coordinates"

.field public static final COULD_NOT_DETERMINE_MIDDLE_POINT_OF_ELLIPTICAL_ARC:Ljava/lang/String; = "Could not determine the middle point of the ellipse traced by this elliptical arc"

.field public static final CURRENT_VIEWPORT_IS_NULL:Ljava/lang/String; = "The current viewport is null. The viewBox applying could not be processed."

.field public static final CURVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x1 y1 x2 y2 x y)+ parameters are expected for curves. Got: {0}"

.field public static final INVALID_SMOOTH_CURVE_USE:Ljava/lang/String; = "The smooth curve operations (S, s, T, t) may not be used as a first operator in path."

.field public static final LINE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x y)+ parameters are expected for lineTo operator. Got: {0}"

.field public static final MEET_OR_SLICE_ARGUMENT_IS_INCORRECT:Ljava/lang/String; = "The meetOrSlice argument is incorrect. It must be `meet`, `slice` or null."

.field public static final MOVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x y)+ parameters are expected for moveTo operator. Got: {0}"

.field public static final PATH_OBJECT_MUST_HAVE_D_ATTRIBUTE:Ljava/lang/String; = "A Path object must have an attribute with the name \'d\'."

.field public static final QUADRATIC_CURVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x1 y1 x y)+ parameters are expected for quadratic curves. Got: {0}"

.field public static final VIEWBOX_IS_INCORRECT:Ljava/lang/String; = "The viewBox is incorrect. The viewBox applying could not be processed."


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
