.class public Lorg/osgi/framework/ServiceEvent;
.super Ljava/util/EventObject;
.source "ServiceEvent.java"


# static fields
.field public static final MODIFIED:I = 0x2

.field public static final MODIFIED_ENDMATCH:I = 0x8

.field public static final REGISTERED:I = 0x1

.field public static final UNREGISTERING:I = 0x4

.field static final serialVersionUID:J = 0x7a06a950156cea13L


# instance fields
.field private final reference:Lorg/osgi/framework/ServiceReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method public constructor <init>(ILorg/osgi/framework/ServiceReference;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;)V"
        }
    .end annotation

    .line 111
    .local p2, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<*>;"
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 112
    iput-object p2, p0, Lorg/osgi/framework/ServiceEvent;->reference:Lorg/osgi/framework/ServiceReference;

    .line 113
    iput p1, p0, Lorg/osgi/framework/ServiceEvent;->type:I

    .line 114
    return-void
.end method


# virtual methods
.method public getServiceReference()Lorg/osgi/framework/ServiceReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/osgi/framework/ServiceReference<",
            "*>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/osgi/framework/ServiceEvent;->reference:Lorg/osgi/framework/ServiceReference;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/osgi/framework/ServiceEvent;->type:I

    return v0
.end method
