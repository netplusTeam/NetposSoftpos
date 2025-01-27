.class Lcom/sleepycat/je/dbi/DiskOrderedScanner$1;
.super Lcom/sleepycat/je/dbi/LSNAccumulator;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;ZZZZJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/DiskOrderedScanner;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 630
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    invoke-direct {p0}, Lcom/sleepycat/je/dbi/LSNAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method noteMemUsage(J)V
    .locals 1
    .param p1, "increment"    # J

    .line 633
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$400(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 634
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 635
    return-void
.end method
