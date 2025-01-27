.class public final Lio/netty/util/AttributeKey;
.super Lio/netty/util/AbstractConstant;
.source "AttributeKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/AbstractConstant<",
        "Lio/netty/util/AttributeKey<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final pool:Lio/netty/util/ConstantPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ConstantPool<",
            "Lio/netty/util/AttributeKey<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lio/netty/util/AttributeKey$1;

    invoke-direct {v0}, Lio/netty/util/AttributeKey$1;-><init>()V

    sput-object v0, Lio/netty/util/AttributeKey;->pool:Lio/netty/util/ConstantPool;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 64
    .local p0, "this":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/AbstractConstant;-><init>(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lio/netty/util/AttributeKey$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/netty/util/AttributeKey$1;

    .line 25
    .local p0, "this":Lio/netty/util/AttributeKey;, "Lio/netty/util/AttributeKey<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/util/AttributeKey;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lio/netty/util/AttributeKey;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Lio/netty/util/AttributeKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation

    .line 55
    sget-object v0, Lio/netty/util/AttributeKey;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->newInstance(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/AttributeKey;
    .locals 1
    .param p1, "secondNameComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "firstNameComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/netty/util/AttributeKey;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0, p1}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/util/AttributeKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/AttributeKey<",
            "TT;>;"
        }
    .end annotation

    .line 39
    sget-object v0, Lio/netty/util/AttributeKey;->pool:Lio/netty/util/ConstantPool;

    invoke-virtual {v0, p0}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    check-cast v0, Lio/netty/util/AttributeKey;

    return-object v0
.end method
