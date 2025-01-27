.class final Lio/netty/util/Signal$SignalConstant;
.super Lio/netty/util/AbstractConstant;
.source "Signal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Signal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignalConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/AbstractConstant<",
        "Lio/netty/util/Signal$SignalConstant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1, p2}, Lio/netty/util/AbstractConstant;-><init>(ILjava/lang/String;)V

    .line 114
    return-void
.end method
