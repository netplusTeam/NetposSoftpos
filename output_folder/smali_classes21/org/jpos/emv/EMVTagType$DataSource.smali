.class public final enum Lorg/jpos/emv/EMVTagType$DataSource;
.super Ljava/lang/Enum;
.source "EMVTagType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/emv/EMVTagType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/emv/EMVTagType$DataSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/emv/EMVTagType$DataSource;

.field public static final enum ICC:Lorg/jpos/emv/EMVTagType$DataSource;

.field public static final enum ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

.field public static final enum TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    new-instance v0, Lorg/jpos/emv/EMVTagType$DataSource;

    const-string v1, "ICC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/emv/EMVTagType$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/emv/EMVTagType$DataSource;->ICC:Lorg/jpos/emv/EMVTagType$DataSource;

    .line 55
    new-instance v1, Lorg/jpos/emv/EMVTagType$DataSource;

    const-string v3, "TERMINAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/emv/EMVTagType$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/emv/EMVTagType$DataSource;->TERMINAL:Lorg/jpos/emv/EMVTagType$DataSource;

    .line 56
    new-instance v3, Lorg/jpos/emv/EMVTagType$DataSource;

    const-string v5, "ISSUER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/emv/EMVTagType$DataSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/emv/EMVTagType$DataSource;->ISSUER:Lorg/jpos/emv/EMVTagType$DataSource;

    .line 53
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jpos/emv/EMVTagType$DataSource;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jpos/emv/EMVTagType$DataSource;->$VALUES:[Lorg/jpos/emv/EMVTagType$DataSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/emv/EMVTagType$DataSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lorg/jpos/emv/EMVTagType$DataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/emv/EMVTagType$DataSource;

    return-object v0
.end method

.method public static values()[Lorg/jpos/emv/EMVTagType$DataSource;
    .locals 1

    .line 53
    sget-object v0, Lorg/jpos/emv/EMVTagType$DataSource;->$VALUES:[Lorg/jpos/emv/EMVTagType$DataSource;

    invoke-virtual {v0}, [Lorg/jpos/emv/EMVTagType$DataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/emv/EMVTagType$DataSource;

    return-object v0
.end method
