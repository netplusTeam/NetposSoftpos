.class public final synthetic Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/jline/console/impl/SystemRegistryImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/console/impl/SystemRegistryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda7;->f$0:Lorg/jline/console/impl/SystemRegistryImpl;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$$ExternalSyntheticLambda7;->f$0:Lorg/jline/console/impl/SystemRegistryImpl;

    invoke-static {v0}, Lorg/jline/console/impl/SystemRegistryImpl;->$r8$lambda$N9LEDsw-ljNQHOvLejHOEGqnNuk(Lorg/jline/console/impl/SystemRegistryImpl;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
