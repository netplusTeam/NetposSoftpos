.class public Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;
.super Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;
.source "BuiltinCompressions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/compression/BuiltinCompressions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/NamedFactoriesListParseResult<",
        "Lorg/apache/sshd/common/compression/Compression;",
        "Lorg/apache/sshd/common/compression/CompressionFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 223
    new-instance v0, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;->EMPTY:Lorg/apache/sshd/common/compression/BuiltinCompressions$ParseResult;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/compression/CompressionFactory;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "parsed":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/compression/CompressionFactory;>;"
    .local p2, "unsupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/config/NamedFactoriesListParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 227
    return-void
.end method
