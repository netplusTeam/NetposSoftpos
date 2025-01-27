.class public final synthetic Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/Builtins;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/Builtins;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda15;->f$0:Lorg/jline/console/impl/Builtins;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/Builtins$$ExternalSyntheticLambda15;->f$0:Lorg/jline/console/impl/Builtins;

    invoke-virtual {v0}, Lorg/jline/console/impl/Builtins;->lambda$widgetCompleter$2$org-jline-console-impl-Builtins()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
