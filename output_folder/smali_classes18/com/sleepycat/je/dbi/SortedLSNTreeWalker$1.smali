.class Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$1;
.super Lcom/sleepycat/je/dbi/LSNAccumulator;
.source "SortedLSNTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->createLSNAccumulator()Lcom/sleepycat/je/dbi/LSNAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;

    .line 318
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$1;->this$0:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;

    invoke-direct {p0}, Lcom/sleepycat/je/dbi/LSNAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method noteMemUsage(J)V
    .locals 1
    .param p1, "increment"    # J

    .line 321
    iget-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$1;->this$0:Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->access$000(Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;J)V

    .line 322
    return-void
.end method
