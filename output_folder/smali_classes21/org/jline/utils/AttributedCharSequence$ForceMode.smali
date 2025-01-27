.class public final enum Lorg/jline/utils/AttributedCharSequence$ForceMode;
.super Ljava/lang/Enum;
.source "AttributedCharSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/AttributedCharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/utils/AttributedCharSequence$ForceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/utils/AttributedCharSequence$ForceMode;

.field public static final enum Force256Colors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

.field public static final enum ForceTrueColors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

.field public static final enum None:Lorg/jline/utils/AttributedCharSequence$ForceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/utils/AttributedCharSequence$ForceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;->None:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    .line 47
    new-instance v1, Lorg/jline/utils/AttributedCharSequence$ForceMode;

    const-string v3, "Force256Colors"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/utils/AttributedCharSequence$ForceMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/utils/AttributedCharSequence$ForceMode;->Force256Colors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    .line 48
    new-instance v3, Lorg/jline/utils/AttributedCharSequence$ForceMode;

    const-string v5, "ForceTrueColors"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/utils/AttributedCharSequence$ForceMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/utils/AttributedCharSequence$ForceMode;->ForceTrueColors:Lorg/jline/utils/AttributedCharSequence$ForceMode;

    .line 45
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/utils/AttributedCharSequence$ForceMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/utils/AttributedCharSequence$ForceMode;->$VALUES:[Lorg/jline/utils/AttributedCharSequence$ForceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/utils/AttributedCharSequence$ForceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;

    return-object v0
.end method

.method public static values()[Lorg/jline/utils/AttributedCharSequence$ForceMode;
    .locals 1

    .line 45
    sget-object v0, Lorg/jline/utils/AttributedCharSequence$ForceMode;->$VALUES:[Lorg/jline/utils/AttributedCharSequence$ForceMode;

    invoke-virtual {v0}, [Lorg/jline/utils/AttributedCharSequence$ForceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/utils/AttributedCharSequence$ForceMode;

    return-object v0
.end method
