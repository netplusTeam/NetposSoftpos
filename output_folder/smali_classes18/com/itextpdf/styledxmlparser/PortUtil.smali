.class public Lcom/itextpdf/styledxmlparser/PortUtil;
.super Ljava/lang/Object;
.source "PortUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static createRegexPatternWithDotMatchingNewlines(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;

    .line 80
    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static wrapInBufferedReader(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1
    .param p0, "inputStreamReader"    # Ljava/io/Reader;

    .line 68
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method
