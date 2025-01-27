.class public Lcom/sleepycat/je/tree/NodeNotEmptyException;
.super Ljava/lang/Exception;
.source "NodeNotEmptyException.java"


# static fields
.field public static final NODE_NOT_EMPTY:Lcom/sleepycat/je/tree/NodeNotEmptyException;

.field private static final serialVersionUID:J = 0x37a1c887L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/sleepycat/je/tree/NodeNotEmptyException;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/NodeNotEmptyException;-><init>()V

    sput-object v0, Lcom/sleepycat/je/tree/NodeNotEmptyException;->NODE_NOT_EMPTY:Lcom/sleepycat/je/tree/NodeNotEmptyException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    return-void
.end method
