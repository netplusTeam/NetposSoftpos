.class Lcom/sleepycat/je/tree/Tree$SplitInfo;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitInfo"
.end annotation


# instance fields
.field child:Lcom/sleepycat/je/tree/IN;

.field index:I

.field parent:Lcom/sleepycat/je/tree/IN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/tree/IN;I)V
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "child"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "index"    # I

    .line 2753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2754
    iput-object p1, p0, Lcom/sleepycat/je/tree/Tree$SplitInfo;->parent:Lcom/sleepycat/je/tree/IN;

    .line 2755
    iput-object p2, p0, Lcom/sleepycat/je/tree/Tree$SplitInfo;->child:Lcom/sleepycat/je/tree/IN;

    .line 2756
    iput p3, p0, Lcom/sleepycat/je/tree/Tree$SplitInfo;->index:I

    .line 2757
    return-void
.end method
