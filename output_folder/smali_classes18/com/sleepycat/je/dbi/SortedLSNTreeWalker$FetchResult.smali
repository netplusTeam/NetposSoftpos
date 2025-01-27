.class Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;
.super Ljava/lang/Object;
.source "SortedLSNTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchResult"
.end annotation


# instance fields
.field final lastLoggedSize:I

.field final node:Lcom/sleepycat/je/tree/Node;

.field final ohBinIndex:I

.field final ohBinParent:Lcom/sleepycat/je/tree/IN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/tree/Node;ILcom/sleepycat/je/tree/IN;I)V
    .locals 0
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "lastLoggedSize"    # I
    .param p3, "ohBinParent"    # Lcom/sleepycat/je/tree/IN;
    .param p4, "ohBinIndex"    # I

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->node:Lcom/sleepycat/je/tree/Node;

    .line 833
    iput p2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->lastLoggedSize:I

    .line 834
    iput-object p3, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->ohBinParent:Lcom/sleepycat/je/tree/IN;

    .line 835
    iput p4, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$FetchResult;->ohBinIndex:I

    .line 836
    return-void
.end method
