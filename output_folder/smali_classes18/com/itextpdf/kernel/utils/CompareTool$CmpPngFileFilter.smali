.class Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;
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
    name = "CmpPngFileFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/utils/CompareTool;


# direct methods
.method private constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;)V
    .locals 0

    .line 1831
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/kernel/utils/CompareTool;
    .param p2, "x1"    # Lcom/itextpdf/kernel/utils/CompareTool$1;

    .line 1831
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .param p1, "pathname"    # Ljava/io/File;

    .line 1833
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, "ap":Ljava/lang/String;
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1835
    .local v1, "b1":Z
    const-string v2, "cmp_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1836
    .local v2, "b2":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-static {v3}, Lcom/itextpdf/kernel/utils/CompareTool;->access$400(Lcom/itextpdf/kernel/utils/CompareTool;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
