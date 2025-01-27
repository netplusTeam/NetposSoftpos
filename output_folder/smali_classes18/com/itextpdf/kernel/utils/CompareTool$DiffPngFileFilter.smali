.class Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;
.super Ljava/lang/Object;
.source "CompareTool.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiffPngFileFilter"
.end annotation


# instance fields
.field private differenceImagePrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/itextpdf/kernel/utils/CompareTool;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Ljava/lang/String;)V
    .locals 0
    .param p2, "differenceImagePrefix"    # Ljava/lang/String;

    .line 1843
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1844
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;->differenceImagePrefix:Ljava/lang/String;

    .line 1845
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "pathname"    # Ljava/io/File;

    .line 1848
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1849
    .local v0, "ap":Ljava/lang/String;
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1850
    .local v1, "b1":Z
    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;->differenceImagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1851
    .local v2, "b2":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
