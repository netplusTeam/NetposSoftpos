.class public Lcom/itextpdf/styledxmlparser/exceptions/StyledXMLParserException;
.super Ljava/lang/RuntimeException;
.source "StyledXMLParserException.java"


# static fields
.field public static final FontProviderContainsZeroFonts:Ljava/lang/String; = "Font Provider contains zero fonts. At least one font shall be present"

.field public static final INVALID_GRADIENT_COLOR_STOP_VALUE:Ljava/lang/String; = "Invalid color stop value: {0}"

.field public static final INVALID_GRADIENT_FUNCTION_ARGUMENTS_LIST:Ljava/lang/String; = "Invalid gradient function arguments list: {0}"

.field public static final INVALID_GRADIENT_TO_SIDE_OR_CORNER_STRING:Ljava/lang/String; = "Invalid direction string: {0}"

.field public static final NAN:Ljava/lang/String; = "The passed value (@{0}) is not a number"

.field public static final UnsupportedEncodingException:Ljava/lang/String; = "Unsupported encoding exception."

.field private static final serialVersionUID:J = -0x1e541b3389ff054L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method
