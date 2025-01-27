.class public final enum Lorg/apache/sshd/common/kex/KexProposalOption;
.super Ljava/lang/Enum;
.source "KexProposalOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/kex/KexProposalOption$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/kex/KexProposalOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final BY_PROPOSAL_INDEX:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum C2SCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum C2SLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum C2SMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final CIPHER_PROPOSALS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPRESSION_PROPOSALS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_KEX_PACKET_GUESS_MATCHES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANGUAGE_PROPOSALS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAC_PROPOSALS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPOSAL_MAX:I

.field public static final enum S2CCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum S2CLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum S2CMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final enum SERVERKEYS:Lorg/apache/sshd/common/kex/KexProposalOption;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/kex/KexProposalOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final proposalIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v1, "ALGORITHMS"

    const/4 v2, 0x0

    const-string v3, "kex algorithms"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->ALGORITHMS:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 36
    new-instance v1, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v3, "SERVERKEYS"

    const/4 v4, 0x1

    const-string v5, "server host key algorithms"

    invoke-direct {v1, v3, v4, v4, v5}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/common/kex/KexProposalOption;->SERVERKEYS:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 37
    new-instance v3, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v5, "C2SENC"

    const/4 v6, 0x2

    const-string v7, "encryption algorithms (client to server)"

    invoke-direct {v3, v5, v6, v6, v7}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 38
    new-instance v5, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v7, "S2CENC"

    const/4 v8, 0x3

    const-string v9, "encryption algorithms (server to client)"

    invoke-direct {v5, v7, v8, v8, v9}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CENC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 39
    new-instance v7, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v9, "C2SMAC"

    const/4 v10, 0x4

    const-string v11, "mac algorithms (client to server)"

    invoke-direct {v7, v9, v10, v10, v11}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 40
    new-instance v9, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v11, "S2CMAC"

    const/4 v12, 0x5

    const-string v13, "mac algorithms (server to client)"

    invoke-direct {v9, v11, v12, v12, v13}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CMAC:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 41
    new-instance v11, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v13, "C2SCOMP"

    const/4 v14, 0x6

    const-string v15, "compression algorithms (client to server)"

    invoke-direct {v11, v13, v14, v14, v15}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 42
    new-instance v13, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v15, "S2CCOMP"

    const/4 v14, 0x7

    const-string v12, "compression algorithms (server to client)"

    invoke-direct {v13, v15, v14, v14, v12}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CCOMP:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 43
    new-instance v12, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v15, "C2SLANG"

    const/16 v14, 0x8

    const-string v10, "languages (client to server)"

    invoke-direct {v12, v15, v14, v14, v10}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/sshd/common/kex/KexProposalOption;->C2SLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 44
    new-instance v10, Lorg/apache/sshd/common/kex/KexProposalOption;

    const-string v15, "S2CLANG"

    const/16 v14, 0x9

    const-string v8, "languages (server to client)"

    invoke-direct {v10, v15, v14, v14, v8}, Lorg/apache/sshd/common/kex/KexProposalOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/sshd/common/kex/KexProposalOption;->S2CLANG:Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 34
    const/16 v8, 0xa

    new-array v8, v8, [Lorg/apache/sshd/common/kex/KexProposalOption;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const/4 v2, 0x4

    aput-object v7, v8, v2

    const/4 v2, 0x5

    aput-object v9, v8, v2

    const/4 v2, 0x6

    aput-object v11, v8, v2

    const/4 v2, 0x7

    aput-object v13, v8, v2

    const/16 v2, 0x8

    aput-object v12, v8, v2

    aput-object v10, v8, v14

    sput-object v8, Lorg/apache/sshd/common/kex/KexProposalOption;->$VALUES:[Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 46
    nop

    .line 47
    invoke-static {v3, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->CIPHER_PROPOSALS:Ljava/util/Set;

    .line 49
    nop

    .line 50
    invoke-static {v7, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->MAC_PROPOSALS:Ljava/util/Set;

    .line 52
    nop

    .line 53
    invoke-static {v11, v13}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->COMPRESSION_PROPOSALS:Ljava/util/Set;

    .line 55
    nop

    .line 56
    invoke-static {v12, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lorg/apache/sshd/common/kex/KexProposalOption;->LANGUAGE_PROPOSALS:Ljava/util/Set;

    .line 58
    nop

    .line 59
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->FIRST_KEX_PACKET_GUESS_MATCHES:Ljava/util/Set;

    .line 64
    new-instance v0, Lorg/apache/sshd/common/kex/KexProposalOption$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/KexProposalOption$$ExternalSyntheticLambda0;-><init>()V

    .line 65
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->BY_PROPOSAL_INDEX:Ljava/util/Comparator;

    .line 72
    const-class v1, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 74
    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/util/EnumSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 76
    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 77
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->VALUES:Ljava/util/List;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lorg/apache/sshd/common/kex/KexProposalOption;->PROPOSAL_MAX:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lorg/apache/sshd/common/kex/KexProposalOption;->proposalIndex:I

    .line 87
    iput-object p4, p0, Lorg/apache/sshd/common/kex/KexProposalOption;->description:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/kex/KexProposalOption;
    .locals 4
    .param p0, "n"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    return-object v1

    .line 115
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/kex/KexProposalOption;

    .line 116
    .local v2, "o":Lorg/apache/sshd/common/kex/KexProposalOption;
    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/KexProposalOption;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    return-object v2

    .line 119
    .end local v2    # "o":Lorg/apache/sshd/common/kex/KexProposalOption;
    :cond_1
    goto :goto_0

    .line 121
    :cond_2
    return-object v1
.end method

.method public static fromProposalIndex(I)Lorg/apache/sshd/common/kex/KexProposalOption;
    .locals 2
    .param p0, "index"    # I

    .line 125
    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexProposalOption;

    return-object v0

    .line 126
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/kex/KexProposalOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexProposalOption;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/kex/KexProposalOption;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/sshd/common/kex/KexProposalOption;->$VALUES:[Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/kex/KexProposalOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/kex/KexProposalOption;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/sshd/common/kex/KexProposalOption;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getProposalIndex()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/sshd/common/kex/KexProposalOption;->proposalIndex:I

    return v0
.end method
