.class public Lcom/itextpdf/io/util/GhostscriptHelper;
.super Ljava/lang/Object;
.source "GhostscriptHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/util/GhostscriptHelper$GhostscriptExecutionException;
    }
.end annotation


# static fields
.field public static final GHOSTSCRIPT_ENVIRONMENT_VARIABLE:Ljava/lang/String; = "ITEXT_GS_EXEC"

.field static final GHOSTSCRIPT_ENVIRONMENT_VARIABLE_LEGACY:Ljava/lang/String; = "gsExec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final GHOSTSCRIPT_KEYWORD:Ljava/lang/String; = "GPL Ghostscript"

.field private static final GHOSTSCRIPT_PARAMS:Ljava/lang/String; = " -dSAFER -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 {0} -sOutputFile=\"{1}\" \"{2}\""


# instance fields
.field private gsExec:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/util/GhostscriptHelper;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "newGsExec"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, "ITEXT_GS_EXEC"

    invoke-static {v0}, Lcom/itextpdf/io/util/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    .line 74
    if-nez v0, :cond_0

    .line 75
    const-string v0, "gsExec"

    invoke-static {v0}, Lcom/itextpdf/io/util/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    const-string v1, "GPL Ghostscript"

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/CliCommandUtil;->isVersionCommandExecutable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghostscript command is not specified or specified incorrectly. Set the ITEXT_GS_EXEC environment variable to a CLI command that can run the Ghostscript application. See BUILDING.MD in the root of the repository for more details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCliExecutionCommand()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    return-object v0
.end method

.method public runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pdf"    # Ljava/lang/String;
    .param p2, "outDir"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/io/util/GhostscriptHelper;->runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pdf"    # Ljava/lang/String;
    .param p2, "outDir"    # Ljava/lang/String;
    .param p3, "image"    # Ljava/lang/String;
    .param p4, "pageList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    invoke-static {p2}, Lcom/itextpdf/io/util/FileUtil;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "<filename>"

    if-eqz v0, :cond_2

    .line 126
    if-nez p4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "-sPageList=<pagelist>"

    const-string v2, "<pagelist>"

    invoke-virtual {v0, v2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p4, v0

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p1, v0, v2

    const-string v2, " -dSAFER -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 {0} -sOutputFile=\"{1}\" \"{2}\""

    invoke-static {v2, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "currGsParams":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/itextpdf/io/util/SystemUtil;->runProcessAndWait(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    return-void

    .line 130
    :cond_1
    new-instance v2, Lcom/itextpdf/io/util/GhostscriptHelper$GhostscriptExecutionException;

    const-string v3, "GhostScript failed for <filename>"

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/io/util/GhostscriptHelper$GhostscriptExecutionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "currGsParams":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot open output directory for <filename>"

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
