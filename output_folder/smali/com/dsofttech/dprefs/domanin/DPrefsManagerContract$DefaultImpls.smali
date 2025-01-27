.class public final Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract$DefaultImpls;
.super Ljava/lang/Object;
.source "DPrefsManagerContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getBoolean$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 356
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 358
    sget-object p2, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_BOOLEAN:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {p2}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 356
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getBoolean"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getDouble$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;DILjava/lang/Object;)D
    .locals 0

    .line 462
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 464
    sget-object p2, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_DOUBLE:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {p2}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Double"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 462
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getDouble"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getFloat$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)F
    .locals 0

    .line 393
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 395
    sget-object p2, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_FLOAT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {p2}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    .line 393
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFloat"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getInt$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 322
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 324
    sget-object p2, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_INT:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {p2}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 322
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getInt"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getLong$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;JILjava/lang/Object;)J
    .locals 0

    .line 428
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 430
    sget-object p2, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_LONG:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {p2}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 428
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getLong"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getString$default(Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 288
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 290
    sget-object p2, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->DEFAULT_VALUE_STRING:Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;

    invoke-virtual {p2}, Lcom/dsofttech/dprefs/enums/DPrefsDefaultValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    .line 288
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/dsofttech/dprefs/domanin/DPrefsManagerContract;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getString"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
