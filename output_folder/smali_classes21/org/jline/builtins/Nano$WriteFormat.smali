.class public final enum Lorg/jline/builtins/Nano$WriteFormat;
.super Ljava/lang/Enum;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "WriteFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Nano$WriteFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Nano$WriteFormat;

.field public static final enum DOS:Lorg/jline/builtins/Nano$WriteFormat;

.field public static final enum MAC:Lorg/jline/builtins/Nano$WriteFormat;

.field public static final enum UNIX:Lorg/jline/builtins/Nano$WriteFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 134
    new-instance v0, Lorg/jline/builtins/Nano$WriteFormat;

    const-string v1, "UNIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Nano$WriteFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Nano$WriteFormat;->UNIX:Lorg/jline/builtins/Nano$WriteFormat;

    .line 135
    new-instance v1, Lorg/jline/builtins/Nano$WriteFormat;

    const-string v3, "DOS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Nano$WriteFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Nano$WriteFormat;->DOS:Lorg/jline/builtins/Nano$WriteFormat;

    .line 136
    new-instance v3, Lorg/jline/builtins/Nano$WriteFormat;

    const-string v5, "MAC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/Nano$WriteFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/Nano$WriteFormat;->MAC:Lorg/jline/builtins/Nano$WriteFormat;

    .line 133
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/builtins/Nano$WriteFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/builtins/Nano$WriteFormat;->$VALUES:[Lorg/jline/builtins/Nano$WriteFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Nano$WriteFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    const-class v0, Lorg/jline/builtins/Nano$WriteFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$WriteFormat;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Nano$WriteFormat;
    .locals 1

    .line 133
    sget-object v0, Lorg/jline/builtins/Nano$WriteFormat;->$VALUES:[Lorg/jline/builtins/Nano$WriteFormat;

    invoke-virtual {v0}, [Lorg/jline/builtins/Nano$WriteFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Nano$WriteFormat;

    return-object v0
.end method
