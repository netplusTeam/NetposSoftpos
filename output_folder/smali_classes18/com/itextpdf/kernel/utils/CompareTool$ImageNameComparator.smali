.class Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;
.super Ljava/lang/Object;
.source "CompareTool.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/kernel/utils/CompareTool;


# direct methods
.method private constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;)V
    .locals 0

    .line 1855
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;->this$0:Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/kernel/utils/CompareTool;Lcom/itextpdf/kernel/utils/CompareTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/kernel/utils/CompareTool;
    .param p2, "x1"    # Lcom/itextpdf/kernel/utils/CompareTool$1;

    .line 1855
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/kernel/utils/CompareTool;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .line 1857
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1858
    .local v0, "f1Name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1859
    .local v1, "f2Name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1855
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
