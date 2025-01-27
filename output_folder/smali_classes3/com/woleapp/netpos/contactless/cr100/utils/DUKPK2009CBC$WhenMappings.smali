.class public final synthetic Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$WhenMappings;
.super Ljava/lang/Object;
.source "DUKPK2009CBC.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->values()[Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->MAC:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->PIN:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->DATA:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->DATA_VARIANT:Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$Enum_key;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/utils/DUKPK2009CBC$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
