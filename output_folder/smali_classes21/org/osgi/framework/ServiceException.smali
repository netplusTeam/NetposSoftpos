.class public Lorg/osgi/framework/ServiceException;
.super Ljava/lang/RuntimeException;
.source "ServiceException.java"


# static fields
.field public static final ASYNC_ERROR:I = 0x7

.field public static final FACTORY_ERROR:I = 0x2

.field public static final FACTORY_EXCEPTION:I = 0x3

.field public static final FACTORY_RECURSION:I = 0x6

.field public static final REMOTE:I = 0x5

.field public static final SUBCLASSED:I = 0x4

.field public static final UNREGISTERED:I = 0x1

.field public static final UNSPECIFIED:I = 0x0

.field static final serialVersionUID:J = 0x2a2c90f36ae30c8fL


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/ServiceException;-><init>(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    iput p2, p0, Lorg/osgi/framework/ServiceException;->type:I

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 113
    invoke-direct {p0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    iput p2, p0, Lorg/osgi/framework/ServiceException;->type:I

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/osgi/framework/ServiceException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/osgi/framework/ServiceException;->type:I

    return v0
.end method
