.class public interface abstract Lorg/jpos/iso/ISOResponseListener;
.super Ljava/lang/Object;
.source "ISOResponseListener.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public expired(Ljava/lang/Object;)V
    .locals 1
    .param p1, "handBack"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/jpos/iso/ISOResponseListener;->responseReceived(Lorg/jpos/iso/ISOMsg;Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public abstract responseReceived(Lorg/jpos/iso/ISOMsg;Ljava/lang/Object;)V
.end method
