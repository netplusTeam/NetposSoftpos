.class public final synthetic Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/SystemRegistryImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/SystemRegistryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda1;->f$0:Lorg/jline/console/impl/SystemRegistryImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda1;->f$0:Lorg/jline/console/impl/SystemRegistryImpl;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/jline/console/impl/SystemRegistryImpl;->$r8$lambda$Wc8Ihf9W0EqFNBM-2J_o0sh4TD4(Lorg/jline/console/impl/SystemRegistryImpl;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
