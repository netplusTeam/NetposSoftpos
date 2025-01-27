.class final enum Lorg/jline/builtins/Tmux$Binding;
.super Ljava/lang/Enum;
.source "Tmux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Tmux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Binding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/builtins/Tmux$Binding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/builtins/Tmux$Binding;

.field public static final enum Discard:Lorg/jline/builtins/Tmux$Binding;

.field public static final enum Mouse:Lorg/jline/builtins/Tmux$Binding;

.field public static final enum SelfInsert:Lorg/jline/builtins/Tmux$Binding;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 197
    new-instance v0, Lorg/jline/builtins/Tmux$Binding;

    const-string v1, "Discard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/builtins/Tmux$Binding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/builtins/Tmux$Binding;->Discard:Lorg/jline/builtins/Tmux$Binding;

    new-instance v1, Lorg/jline/builtins/Tmux$Binding;

    const-string v3, "SelfInsert"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Tmux$Binding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/builtins/Tmux$Binding;->SelfInsert:Lorg/jline/builtins/Tmux$Binding;

    new-instance v3, Lorg/jline/builtins/Tmux$Binding;

    const-string v5, "Mouse"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/builtins/Tmux$Binding;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/builtins/Tmux$Binding;->Mouse:Lorg/jline/builtins/Tmux$Binding;

    .line 196
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/builtins/Tmux$Binding;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/builtins/Tmux$Binding;->$VALUES:[Lorg/jline/builtins/Tmux$Binding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/builtins/Tmux$Binding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 196
    const-class v0, Lorg/jline/builtins/Tmux$Binding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Tmux$Binding;

    return-object v0
.end method

.method public static values()[Lorg/jline/builtins/Tmux$Binding;
    .locals 1

    .line 196
    sget-object v0, Lorg/jline/builtins/Tmux$Binding;->$VALUES:[Lorg/jline/builtins/Tmux$Binding;

    invoke-virtual {v0}, [Lorg/jline/builtins/Tmux$Binding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/builtins/Tmux$Binding;

    return-object v0
.end method
