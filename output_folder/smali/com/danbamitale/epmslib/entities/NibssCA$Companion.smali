.class public final Lcom/danbamitale/epmslib/entities/NibssCA$Companion;
.super Ljava/lang/Object;
.source "NibssCA.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/entities/NibssCA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNibssCA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NibssCA.kt\ncom/danbamitale/epmslib/entities/NibssCA$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,81:1\n11335#2:82\n11670#2,3:83\n*S KotlinDebug\n*F\n+ 1 NibssCA.kt\ncom/danbamitale/epmslib/entities/NibssCA$Companion\n*L\n45#1:82\n45#1:83,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00172\u0006\u0010\u0018\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/NibssCA$Companion;",
        "",
        "()V",
        "CAPK_EXPONENT_38",
        "",
        "CAPK_HASH_39",
        "CAPK_MODULUS_37",
        "CA_KEY_INDEX_32",
        "CA_KEY_INTERNAL_REFERENCE_33",
        "CA_KEY_NAME_34",
        "HASH_ALGORITHM_36",
        "KEY_ALGORITHM_40",
        "RID_35",
        "tags",
        "",
        "getTags",
        "()[Ljava/lang/Integer;",
        "[Ljava/lang/Integer;",
        "parse",
        "Lcom/danbamitale/epmslib/entities/NibssCA;",
        "data",
        "",
        "parseNibssResponse",
        "",
        "response",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/danbamitale/epmslib/entities/NibssCA$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTags()[Ljava/lang/Integer;
    .locals 1

    .line 29
    invoke-static {}, Lcom/danbamitale/epmslib/entities/NibssCA;->access$getTags$cp()[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/NibssCA;
    .locals 16
    .param p1, "data"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/danbamitale/epmslib/entities/NibssCA$Companion;->getTags()[Ljava/lang/Integer;

    move-result-object v2

    .local v2, "$this$map$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 83
    .local v6, "$i$f$mapTo":I
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v5, v9

    .line 84
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .local v11, "it":I
    const/4 v12, 0x0

    .line 46
    .local v12, "$i$a$-map-NibssCA$Companion$parse$1":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x5

    if-le v13, v14, :cond_1

    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x0

    const/4 v0, 0x2

    invoke-static {v13, v14, v8, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 47
    invoke-virtual {v1, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 48
    const/4 v0, 0x3

    invoke-virtual {v1, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sb.substring(0, 3)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 49
    .local v13, "len":I
    invoke-virtual {v1, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt v13, v0, :cond_0

    .line 54
    invoke-virtual {v1, v8, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v1, v8, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 56
    new-instance v14, Lkotlin/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v14, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v0    # "value":Ljava/lang/String;
    .end local v13    # "len":I
    goto :goto_1

    .line 51
    .restart local v13    # "len":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid input"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    .end local v13    # "len":I
    :cond_1
    new-instance v14, Lkotlin/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v13, ""

    invoke-direct {v14, v0, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    :goto_1
    nop

    .line 84
    .end local v11    # "it":I
    .end local v12    # "$i$a$-map-NibssCA$Companion$parse$1":I
    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .line 85
    :cond_2
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$mapTo":I
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 82
    nop

    .end local v2    # "$this$map$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 60
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .local v0, "$this$parse_u24lambda_u241":Ljava/util/Map;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-run-NibssCA$Companion$parse$2":I
    new-instance v13, Lcom/danbamitale/epmslib/entities/NibssCA;

    .line 62
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 63
    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 64
    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 65
    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 66
    const/16 v3, 0x24

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 67
    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 68
    const/16 v3, 0x26

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    .line 69
    const/16 v3, 0x27

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 70
    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 61
    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/danbamitale/epmslib/entities/NibssCA;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "$this$parse_u24lambda_u241":Ljava/util/Map;
    .end local v2    # "$i$a$-run-NibssCA$Companion$parse$2":I
    nop

    .line 45
    return-object v13
.end method

.method public final parseNibssResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/danbamitale/epmslib/entities/NibssCA;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    const/16 v3, 0x7e

    aput-char v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->splitToSequence$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v1, Lcom/danbamitale/epmslib/entities/NibssCA$Companion$parseNibssResponse$1;->INSTANCE:Lcom/danbamitale/epmslib/entities/NibssCA$Companion$parseNibssResponse$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
