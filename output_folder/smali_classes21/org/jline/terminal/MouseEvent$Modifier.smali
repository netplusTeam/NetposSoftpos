.class public final enum Lorg/jline/terminal/MouseEvent$Modifier;
.super Ljava/lang/Enum;
.source "MouseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/MouseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Modifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/MouseEvent$Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/MouseEvent$Modifier;

.field public static final enum Alt:Lorg/jline/terminal/MouseEvent$Modifier;

.field public static final enum Control:Lorg/jline/terminal/MouseEvent$Modifier;

.field public static final enum Shift:Lorg/jline/terminal/MouseEvent$Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lorg/jline/terminal/MouseEvent$Modifier;

    const-string v1, "Shift"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/MouseEvent$Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/MouseEvent$Modifier;->Shift:Lorg/jline/terminal/MouseEvent$Modifier;

    .line 34
    new-instance v1, Lorg/jline/terminal/MouseEvent$Modifier;

    const-string v3, "Alt"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/MouseEvent$Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/MouseEvent$Modifier;->Alt:Lorg/jline/terminal/MouseEvent$Modifier;

    .line 35
    new-instance v3, Lorg/jline/terminal/MouseEvent$Modifier;

    const-string v5, "Control"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/MouseEvent$Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/MouseEvent$Modifier;->Control:Lorg/jline/terminal/MouseEvent$Modifier;

    .line 32
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/terminal/MouseEvent$Modifier;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/terminal/MouseEvent$Modifier;->$VALUES:[Lorg/jline/terminal/MouseEvent$Modifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/MouseEvent$Modifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/jline/terminal/MouseEvent$Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/MouseEvent$Modifier;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/MouseEvent$Modifier;
    .locals 1

    .line 32
    sget-object v0, Lorg/jline/terminal/MouseEvent$Modifier;->$VALUES:[Lorg/jline/terminal/MouseEvent$Modifier;

    invoke-virtual {v0}, [Lorg/jline/terminal/MouseEvent$Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/MouseEvent$Modifier;

    return-object v0
.end method
