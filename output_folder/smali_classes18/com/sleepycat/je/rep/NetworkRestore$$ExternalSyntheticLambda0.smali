.class public final synthetic Lcom/sleepycat/je/rep/NetworkRestore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/sleepycat/je/rep/NetworkRestore$Server;

    invoke-static {p1}, Lcom/sleepycat/je/rep/NetworkRestore;->lambda$resetServerList$0(Lcom/sleepycat/je/rep/NetworkRestore$Server;)J

    move-result-wide v0

    return-wide v0
.end method
