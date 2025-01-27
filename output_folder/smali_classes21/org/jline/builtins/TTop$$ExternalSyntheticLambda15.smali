.class public final synthetic Lorg/jline/builtins/TTop$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/TTop;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/TTop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda15;->f$0:Lorg/jline/builtins/TTop;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/TTop$$ExternalSyntheticLambda15;->f$0:Lorg/jline/builtins/TTop;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/TTop;->lambda$display$12$org-jline-builtins-TTop(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
