.class public final Lio/netty/channel/DefaultMessageSizeEstimator;
.super Ljava/lang/Object;
.source "DefaultMessageSizeEstimator.java"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/channel/MessageSizeEstimator;


# instance fields
.field private final handle:Lio/netty/channel/MessageSizeEstimator$Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lio/netty/channel/DefaultMessageSizeEstimator;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lio/netty/channel/DefaultMessageSizeEstimator;-><init>(I)V

    sput-object v0, Lio/netty/channel/DefaultMessageSizeEstimator;->DEFAULT:Lio/netty/channel/MessageSizeEstimator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "unknownSize"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "unknownSize"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 65
    new-instance v0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;-><init>(ILio/netty/channel/DefaultMessageSizeEstimator$1;)V

    iput-object v0, p0, Lio/netty/channel/DefaultMessageSizeEstimator;->handle:Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 66
    return-void
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/netty/channel/DefaultMessageSizeEstimator;->handle:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-object v0
.end method
