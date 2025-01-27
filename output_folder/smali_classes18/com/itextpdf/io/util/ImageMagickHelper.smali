.class public Lcom/itextpdf/io/util/ImageMagickHelper;
.super Ljava/lang/Object;
.source "ImageMagickHelper.java"


# static fields
.field public static final MAGICK_COMPARE_ENVIRONMENT_VARIABLE:Ljava/lang/String; = "ITEXT_MAGICK_COMPARE_EXEC"

.field static final MAGICK_COMPARE_ENVIRONMENT_VARIABLE_LEGACY:Ljava/lang/String; = "compareExec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MAGICK_COMPARE_KEYWORD:Ljava/lang/String; = "ImageMagick Studio LLC"


# instance fields
.field private compareExec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/util/ImageMagickHelper;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "newCompareExec"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string v0, "ITEXT_MAGICK_COMPARE_EXEC"

    invoke-static {v0}, Lcom/itextpdf/io/util/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    .line 71
    if-nez v0, :cond_0

    .line 72
    const-string v0, "compareExec"

    invoke-static {v0}, Lcom/itextpdf/io/util/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    const-string v1, "ImageMagick Studio LLC"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/CliCommandUtil;->isVersionCommandExecutable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    return-void

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageMagick comparison command specified incorrectly. Set the ITEXT_MAGICK_COMPARE_EXEC environment variable with the CLI command which can run the ImageMagic comparison. See BUILDING.MD in the root of the repository for more details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCliExecutionCommand()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    return-object v0
.end method

.method public runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "outImageFilePath"    # Ljava/lang/String;
    .param p2, "cmpImageFilePath"    # Ljava/lang/String;
    .param p3, "diffImageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/io/util/ImageMagickHelper;->runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "outImageFilePath"    # Ljava/lang/String;
    .param p2, "cmpImageFilePath"    # Ljava/lang/String;
    .param p3, "diffImageName"    # Ljava/lang/String;
    .param p4, "fuzzValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    if-nez p4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " -metric AE -fuzz <fuzzValue>%"

    const-string v1, "<fuzzValue>"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p4, v0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "currCompareParams":Ljava/lang/StringBuilder;
    nop

    .line 126
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/SystemUtil;->runProcessAndWait(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
