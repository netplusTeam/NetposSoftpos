.class public final enum Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
.super Ljava/lang/Enum;
.source "LanguageAlpha3Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/LanguageAlpha3Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

.field public static final enum BIBLIOGRAPHY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

.field public static final enum COMMON:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

.field public static final enum TERMINOLOGY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 6004
    new-instance v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    const-string v1, "TERMINOLOGY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->TERMINOLOGY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    .line 6009
    new-instance v1, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    const-string v3, "BIBLIOGRAPHY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->BIBLIOGRAPHY:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    .line 6015
    new-instance v3, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    const-string v5, "COMMON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->COMMON:Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    .line 5999
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->$VALUES:[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5999
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5999
    const-class v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-object v0
.end method

.method public static values()[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;
    .locals 1

    .line 5999
    sget-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->$VALUES:[Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    invoke-virtual {v0}, [Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neovisionaries/i18n/LanguageAlpha3Code$Usage;

    return-object v0
.end method
