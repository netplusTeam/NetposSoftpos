.class public final Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;
.super Lorg/apache/sshd/common/config/NamedResourceListParseResult;
.source "BuiltinDHFactories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/kex/BuiltinDHFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/NamedResourceListParseResult<",
        "Lorg/apache/sshd/common/kex/DHFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 383
    new-instance v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;->EMPTY:Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/kex/DHFactory;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/config/NamedResourceListParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 387
    return-void
.end method


# virtual methods
.method public getParsedFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/DHFactory;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;->getParsedResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnsupportedFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lorg/apache/sshd/common/kex/BuiltinDHFactories$ParseResult;->getUnsupportedResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
