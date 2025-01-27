.class public Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;
.super Ljava/lang/Object;
.source "PortUtil.java"


# static fields
.field public static final escapedSingleBracket:Ljava/lang/String; = "\'\'"

.field public static final signedNumberFormat:Ljava/lang/String; = ",number,+#;-#"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charsetIsSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public static getReadOnlyRandomAccesFile(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "input"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static isSuccessful(Ljava/util/regex/Matcher;)Z
    .locals 1
    .param p0, "m"    # Ljava/util/regex/Matcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
