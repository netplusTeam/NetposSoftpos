.class public final Lio/netty/util/Signal;
.super Ljava/lang/Error;
.source "Signal.java"

# interfaces
.implements Lio/netty/util/Constant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Signal$SignalConstant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Error;",
        "Lio/netty/util/Constant<",
        "Lio/netty/util/Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final pool:Lio/netty/util/ConstantPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ConstantPool<",
            "Lio/netty/util/Signal;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x311aa53385c8549L


# instance fields
.field private final constant:Lio/netty/util/Signal$SignalConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lio/netty/util/Signal$1;

    invoke-direct {v0}, Lio/netty/util/Signal$1;-><init>()V

    sput-object v0, Lio/netty/util/Signal;->pool:Lio/netty/util/ConstantPool;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 54
    new-instance v0, Lio/netty/util/Signal$SignalConstant;

    invoke-direct {v0, p1, p2}, Lio/netty/util/Signal$SignalConstant;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lio/netty/util/Signal$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/netty/util/Signal$1;

    .line 23
    invoke-direct {p0, p1, p2}, Lio/netty/util/Signal;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Signal;
    .locals 1
    .param p1, "secondNameComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/Signal;"
        }
    .end annotation

    .line 45
    .local p0, "firstNameComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/netty/util/Signal;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/util/Signal;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/Signal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    sget-object v0, Lio/netty/util/Signal;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/util/Signal;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lio/netty/util/Signal;)I
    .locals 2
    .param p1, "other"    # Lio/netty/util/Signal;

    .line 99
    if-ne p0, p1, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    iget-object v1, p1, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    invoke-virtual {v0, v1}, Lio/netty/util/Signal$SignalConstant;->compareTo(Lio/netty/util/AbstractConstant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lio/netty/util/Signal;

    invoke-virtual {p0, p1}, Lio/netty/util/Signal;->compareTo(Lio/netty/util/Signal;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public expect(Lio/netty/util/Signal;)V
    .locals 3
    .param p1, "signal"    # Lio/netty/util/Signal;

    .line 62
    if-ne p0, p1, :cond_0

    .line 65
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 74
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    .line 79
    iget-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    invoke-virtual {v0}, Lio/netty/util/Signal$SignalConstant;->id()I

    move-result v0

    return v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 69
    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/netty/util/Signal;->constant:Lio/netty/util/Signal$SignalConstant;

    invoke-virtual {v0}, Lio/netty/util/Signal$SignalConstant;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lio/netty/util/Signal;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
