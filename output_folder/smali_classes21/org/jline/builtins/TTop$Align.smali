.class public final enum Lorg/jline/builtins/TTop$Align;
.super Ljava/lang/Enum;
.source "TTop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/TTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/TTop$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/TTop$Align;

.field public static final enum Left:Lorg/jline/builtins/TTop$Align;

.field public static final enum Right:Lorg/jline/builtins/TTop$Align;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    new-instance v0, Lorg/jline/builtins/TTop$Align;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/TTop$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/TTop$Align;->Left:Lorg/jline/builtins/TTop$Align;

    new-instance v1, Lorg/jline/builtins/TTop$Align;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/TTop$Align;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/TTop$Align;->Right:Lorg/jline/builtins/TTop$Align;

    .line 61
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jline/builtins/TTop$Align;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/jline/builtins/TTop$Align;->$VALUES:[Lorg/jline/builtins/TTop$Align;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/TTop$Align;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lorg/jline/builtins/TTop$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/TTop$Align;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/TTop$Align;
    .locals 1

    .line 61
    sget-object v0, Lorg/jline/builtins/TTop$Align;->$VALUES:[Lorg/jline/builtins/TTop$Align;

    invoke-virtual {v0}, [Lorg/jline/builtins/TTop$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/TTop$Align;

    return-object v0
.end method
