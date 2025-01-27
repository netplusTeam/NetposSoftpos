.class public final synthetic Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/TTop;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/TTop;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;->f$0:Lorg/jline/builtins/TTop;

    iput-object p2, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;->f$0:Lorg/jline/builtins/TTop;

    iget-object v1, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jline/builtins/TTop;->lambda$display$11$org-jline-builtins-TTop(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
