.class final Lio/netty/util/AttributeKey$1;
.super Lio/netty/util/ConstantPool;
.source "AttributeKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/AttributeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/ConstantPool<",
        "Lio/netty/util/AttributeKey<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/netty/util/ConstantPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newConstant(ILjava/lang/String;)Lio/netty/util/AttributeKey;
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/AttributeKey<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lio/netty/util/AttributeKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/netty/util/AttributeKey;-><init>(ILjava/lang/String;Lio/netty/util/AttributeKey$1;)V

    return-object v0
.end method

.method protected bridge synthetic newConstant(ILjava/lang/String;)Lio/netty/util/Constant;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lio/netty/util/AttributeKey$1;->newConstant(ILjava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object p1

    return-object p1
.end method
