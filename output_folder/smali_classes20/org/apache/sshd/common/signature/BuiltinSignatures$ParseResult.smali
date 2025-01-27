.class public final Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
.super Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;
.source "BuiltinSignatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/signature/BuiltinSignatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/NamedFactoriesListParseResult<",
        "Lorg/apache/sshd/common/signature/Signature;",
        "Lorg/apache/sshd/common/signature/SignatureFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 333
    new-instance v0, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;->EMPTY:Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/signature/SignatureFactory;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/signature/SignatureFactory;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 337
    return-void
.end method
