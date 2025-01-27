.class public final synthetic Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/Builtins;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/Builtins;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda13;->f$0:Lorg/jline/console/impl/Builtins;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda13;->f$0:Lorg/jline/console/impl/Builtins;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jline/console/impl/Builtins;->$r8$lambda$-cZOO8sAgIJYp42MLkbiHnTGDuU(Lorg/jline/console/impl/Builtins;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
