.class public final synthetic Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sleepycat/je/dbi/CursorImpl$WithCursor;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final withCursor(Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Lcom/sleepycat/je/dbi/DbTree;->lambda$getDbNames$4(Ljava/util/List;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result p1

    return p1
.end method
