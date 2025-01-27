.class public final synthetic Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Commands$Colors;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Commands$Colors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Commands$Colors;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Commands$Colors$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Commands$Colors;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jline/builtins/Commands$Colors;->$r8$lambda$2BPf4oklMhmZxqOxrFswZcPv9WU(Lorg/jline/builtins/Commands$Colors;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
