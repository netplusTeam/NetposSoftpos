.class public final enum Lorg/jline/utils/DiffHelper$Operation;
.super Ljava/lang/Enum;
.source "DiffHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/DiffHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/utils/DiffHelper$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/utils/DiffHelper$Operation;

.field public static final enum DELETE:Lorg/jline/utils/DiffHelper$Operation;

.field public static final enum EQUAL:Lorg/jline/utils/DiffHelper$Operation;

.field public static final enum INSERT:Lorg/jline/utils/DiffHelper$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lorg/jline/utils/DiffHelper$Operation;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/utils/DiffHelper$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/utils/DiffHelper$Operation;->DELETE:Lorg/jline/utils/DiffHelper$Operation;

    new-instance v1, Lorg/jline/utils/DiffHelper$Operation;

    const-string v3, "INSERT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/utils/DiffHelper$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/utils/DiffHelper$Operation;->INSERT:Lorg/jline/utils/DiffHelper$Operation;

    new-instance v3, Lorg/jline/utils/DiffHelper$Operation;

    const-string v5, "EQUAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/utils/DiffHelper$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/utils/DiffHelper$Operation;->EQUAL:Lorg/jline/utils/DiffHelper$Operation;

    .line 27
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/utils/DiffHelper$Operation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/utils/DiffHelper$Operation;->$VALUES:[Lorg/jline/utils/DiffHelper$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/utils/DiffHelper$Operation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/jline/utils/DiffHelper$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/DiffHelper$Operation;

    return-object v0
.end method

.method public static values()[Lorg/jline/utils/DiffHelper$Operation;
    .locals 1

    .line 27
    sget-object v0, Lorg/jline/utils/DiffHelper$Operation;->$VALUES:[Lorg/jline/utils/DiffHelper$Operation;

    invoke-virtual {v0}, [Lorg/jline/utils/DiffHelper$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/utils/DiffHelper$Operation;

    return-object v0
.end method
