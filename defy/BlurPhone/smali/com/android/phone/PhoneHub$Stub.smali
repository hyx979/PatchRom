.class public abstract Lcom/android/phone/PhoneHub$Stub;
.super Landroid/os/Binder;
.source "PhoneHub.java"

# interfaces
.implements Lcom/android/phone/PhoneHub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneHub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.phone.PhoneHub"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.phone.PhoneHub"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/PhoneHub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/phone/PhoneHub;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.phone.PhoneHub"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/phone/PhoneHub;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/phone/PhoneHub;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/phone/PhoneHub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneHub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-string v3, "com.android.phone.PhoneHub"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.android.phone.PhoneHub"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.android.phone.PhoneHub"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/firewall/CallFirewallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/firewall/CallFirewallCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/motorola/firewall/CallFirewallCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneHub$Stub;->registerCallback(Lcom/motorola/firewall/CallFirewallCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 52
    goto :goto_0

    .line 56
    .end local v0           #_arg0:Lcom/motorola/firewall/CallFirewallCallback;
    :sswitch_2
    const-string v1, "com.android.phone.PhoneHub"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/firewall/CallFirewallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/firewall/CallFirewallCallback;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Lcom/motorola/firewall/CallFirewallCallback;
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneHub$Stub;->unregisterCallback(Lcom/motorola/firewall/CallFirewallCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 61
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
