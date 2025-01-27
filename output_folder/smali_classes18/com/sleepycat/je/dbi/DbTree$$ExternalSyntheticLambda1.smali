.class public final synthetic Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sleepycat/je/dbi/DbTree$GetRepContext;


# instance fields
.field public final synthetic f$0:Lcom/sleepycat/je/log/DbOpReplicationContext;


# direct methods
.method public synthetic constructor <init>(Lcom/sleepycat/je/log/DbOpReplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda1;->f$0:Lcom/sleepycat/je/log/DbOpReplicationContext;

    return-void
.end method


# virtual methods
.method public final get(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda1;->f$0:Lcom/sleepycat/je/log/DbOpReplicationContext;

    invoke-static {v0, p1}, Lcom/sleepycat/je/dbi/DbTree;->lambda$doTruncateDb$3(Lcom/sleepycat/je/log/DbOpReplicationContext;Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object p1

    return-object p1
.end method
