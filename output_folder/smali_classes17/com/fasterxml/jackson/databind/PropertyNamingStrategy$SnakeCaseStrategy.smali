.class public Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$SnakeCaseStrategy;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnakeCaseStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy$PropertyNamingStrategyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;

    .line 309
    if-nez p1, :cond_0

    return-object p1

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 311
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 312
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 313
    .local v2, "resultLength":I
    const/4 v3, 0x0

    .line 314
    .local v3, "wasPrevTranslated":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 316
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 317
    .local v5, "c":C
    const/16 v6, 0x5f

    if-gtz v4, :cond_1

    if-eq v5, v6, :cond_4

    .line 319
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 321
    if-nez v3, :cond_2

    if-lez v2, :cond_2

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_2

    .line 323
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v2, v2, 0x1

    .line 326
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 327
    const/4 v3, 0x1

    goto :goto_1

    .line 331
    :cond_3
    const/4 v3, 0x0

    .line 333
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 314
    .end local v5    # "c":C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    .end local v4    # "i":I
    :cond_5
    if-lez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, p1

    :goto_2
    return-object v4
.end method
