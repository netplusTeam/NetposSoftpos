.class public Lorg/jpos/q2/qbean/Shutdown;
.super Lorg/jpos/q2/QBeanSupport;
.source "Shutdown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public startService()V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/Shutdown;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->shutdown()V

    .line 26
    return-void
.end method
