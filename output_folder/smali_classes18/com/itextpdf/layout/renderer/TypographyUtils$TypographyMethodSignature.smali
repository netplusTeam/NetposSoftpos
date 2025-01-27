.class Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;
.super Ljava/lang/Object;
.source "TypographyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/TypographyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypographyMethodSignature"
.end annotation


# instance fields
.field protected final className:Ljava/lang/String;

.field private final methodName:Ljava/lang/String;

.field protected parameterTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p3, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->methodName:Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->className:Ljava/lang/String;

    .line 371
    iput-object p2, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->parameterTypes:[Ljava/lang/Class;

    .line 372
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 376
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 377
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 379
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;

    .line 381
    .local v2, "that":Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->className:Ljava/lang/String;

    iget-object v4, v2, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 382
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->parameterTypes:[Ljava/lang/Class;

    iget-object v4, v2, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->methodName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 377
    .end local v2    # "that":Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;
    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 390
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->parameterTypes:[Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 391
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/itextpdf/layout/renderer/TypographyUtils$TypographyMethodSignature;->methodName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    .line 392
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
